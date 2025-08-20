import pandas as pd
import mysql.connector

# Connect to MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root_",
    database="projects"
)

cursor = conn.cursor()

# Load CSV
df = pd.read_csv("user_sessions.csv")

# Create table if not exists
cursor.execute("""
    CREATE TABLE IF NOT EXISTS user_sessions (
        User_ID VARCHAR(50),
        Session_ID VARCHAR(50),
        Age INT,
        Gender VARCHAR(10),
        Device_Type VARCHAR(50),
        Location VARCHAR(100),
        Time_Spent FLOAT,
        Pages_Viewed INT,
        Recommended_Product_Category VARCHAR(100),
        Recommendation_Engine VARCHAR(100),
        Converted INT
    )
""")

# Insert data row by row
for _, row in df.iterrows():
    cursor.execute("""
        INSERT INTO user_sessions (
            User_ID, Session_ID, Age, Gender, Device_Type, Location,
            Time_Spent, Pages_Viewed, Recommended_Product_Category,
            Recommendation_Engine, Converted
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    """, (
        row['User_ID'],
        row['Session_ID'],
        int(row['Age']),
        row['Gender'],
        row['Device_Type'],
        row['Location'],
        float(row['Time_Spent']),
        int(row['Pages_Viewed']),
        row['Recommended_Product_Category'],
        row['Recommendation_Engine'],
        int(row['Converted'])
    ))

conn.commit()
print("User session data imported successfully!")
