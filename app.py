from flask import Flask, render_template, request
import pandas as pd
import pickle
from sklearn.preprocessing import LabelEncoder

app = Flask(__name__)
model = pickle.load(open('C:\\Users\\Dhusyath\\Downloads\\PROJECTS_DA\\PROJECTS_DA\\new recommender(AB testing)\\conversion_model.pkl', "rb"))

# Pre-fit label encoders for consistency
encoders = {}
for col in ["Gender", "Device_Type", "Location", "Recommended_Product_Category", "Recommendation_Engine"]:
    le = LabelEncoder()
    le.fit(["Male", "Female", "Other"] if col == "Gender" else
           ["Mobile", "Desktop", "Tablet"] if col == "Device_Type" else
           ["Bangalore", "Mumbai", "Delhi", "Hyderabad", "Chennai", "Kolkata"] if col == "Location" else
           ["Electronics", "Fashion", "Home", "Books", "Beauty"] if col == "Recommended_Product_Category" else
           ["Old", "New"])
    encoders[col] = le

@app.route("/", methods=["GET", "POST"])
def index():
    prediction = None
    if request.method == "POST":
        age = int(request.form["age"])
        gender = encoders["Gender"].transform([request.form["gender"]])[0]
        device = encoders["Device_Type"].transform([request.form["device"]])[0]
        location = encoders["Location"].transform([request.form["location"]])[0]
        time_spent = float(request.form["time_spent"])
        pages_viewed = int(request.form["pages_viewed"])
        category = encoders["Recommended_Product_Category"].transform([request.form["category"]])[0]
        engine = encoders["Recommendation_Engine"].transform([request.form["engine"]])[0]

        input_df = pd.DataFrame([{
            "Age": age,
            "Gender": gender,
            "Device_Type": device,
            "Location": location,
            "Time_Spent": time_spent,
            "Pages_Viewed": pages_viewed,
            "Recommended_Product_Category": category,
            "Recommendation_Engine": engine
        }])

        pred = model.predict(input_df)[0]
        prediction = " Will Convert" if pred == 1 else "❌ Will Not Convert"

    return render_template("index.html", prediction=prediction)

if __name__ == "__main__":
    app.run(debug=True)
