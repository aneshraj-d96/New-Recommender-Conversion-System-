# 🔄 New Recommender Conversion System

A full-stack analytics solution designed to evaluate recommendation engine performance and predict user conversion outcomes. This project empowers product teams, marketers, and analysts with predictive insights and interactive dashboards to optimize recommendation strategies and boost engagement.

---

## 🚗 GitHub Project Repository  
🔗 [Click to view New-Recommender-Conversion-System](https://github.com/aneshraj-d96/New-Recommender-Conversion-System-)

---

## 🧠 Project Overview

Recommendation engines are central to driving user engagement and sales. This project analyzes **200,000+ user sessions** to evaluate recommendation effectiveness, predict conversion likelihood, and visualize behavioral patterns across devices, locations, and product categories.

**Key Objectives:**
- Clean and preprocess session-level user data  
- Analyze recommendation engine performance (Old vs. New)  
- Build classification models to predict conversion  
- Deploy interactive dashboards and Flask web app for business decision-making  

---

## 📁 Project Structure

| File Name                          | Description                                                                 |
|------------------------------------|-----------------------------------------------------------------------------|
| `recommender_conversion_data.csv`  | Raw dataset with 200K+ user sessions                                       |
| `cleaned_conversion_data.csv`      | Preprocessed dataset with engineered features                              |
| `conversion_model.pkl`             | Trained model for predicting conversion                                    |
| `new recommender.sql`              | SQL queries for session filtering and aggregation                          |
| `sqlconnect.py`                    | Python script for SQL database connection                                  |
| `app.py`                           | Flask application for web deployment                                       |
| `new recommend.ipynb`              | Jupyter notebook with EDA, modeling, and insights                          |
| `new recommend conversion system dashboard` | Dashboard file (Power BI or HTML-based)                            |
| `templates/`                       | HTML templates for Flask rendering                                         |

---

## 🧹 Data Preprocessing

- Encoded categorical features (`Gender`, `Device_Type`, `Location`, `Recommended_Product_Category`, `Recommendation_Engine`)  
- Normalized continuous variables (`Time_Spent`, `Pages_Viewed`)  
- Removed duplicates and ensured type consistency  
- Converted `Converted` to binary target variable  

---

## 📈 Exploratory Data Analysis

- Conversion trends by age, gender, and device type  
- Time spent vs. conversion correlation  
- Recommendation engine performance comparison  
- Product category effectiveness  
- Location-based engagement patterns  

---

## 🤖 Modeling Approach

- **Target Variable**: `Converted`  
- **Algorithms Used**: Logistic Regression, Random Forest, XGBoost  
- **Evaluation Metrics**: Accuracy, ROC-AUC, Precision, Recall  
- **Feature Importance**: `Time_Spent`, `Pages_Viewed`, `Recommendation_Engine`, `Device_Type`  

---

## 📊 Dashboard Overview

### 🔷 Power BI Dashboard  
Visualizes conversion behavior and recommendation engine performance:

- 📊 Conversion trends by age, gender, and location  
- 🧠 Comparison of old vs. new recommendation engines  
- 📈 Time spent and page views correlation with conversion  
- 🛍️ Product category effectiveness  
- 📍 Location-based conversion heatmap  

![Power BI Preview](https://image2url.com/images/1755857842235-4cf63a6a-c0c0-4967-85cc-66157ca1d2b9.png)
![Power BI Preview](https://image2url.com/images/1755857940558-29497c42-adfd-46b2-a013-aadb5d66423e.png)

---

### 🟢 Flask Web App  
Interactive web interface for conversion prediction and dashboard insights:

- 🧠 Input session attributes to predict conversion likelihood  
- 📈 Visual breakdown of feature importance  
- 📊 Recommendation engine performance metrics  
- 🔍 Dynamic filtering by device, location, and product category  

![Flask App Preview](https://image2url.com/images/1755857985692-202290a3-31be-4ceb-8f57-60543c50ea04.png)
![Flask App Preview](https://image2url.com/images/1755858043723-87f0849e-0c92-4ed6-8b93-ac6e85fe0396.png)

---

## 🚀 Deployment

- Model serialized with `joblib` as `conversion_model.pkl`  
- Flask app served via `app.py` with HTML templates  
- SQL integration for dynamic session querying  
- Git LFS used for large file management  

---

## 🧠 Business Impact

- Identifies high-converting user segments for targeted campaigns  
- Optimizes recommendation engine strategies for better ROI  
- Enhances personalization based on device and location insights  
- Drives higher engagement and conversion rates across platforms  

---

## 🛠️ Tech Stack

- **Python**: Pandas, NumPy, Scikit-learn, Flask  
- **SQL**: Data extraction and filtering  
- **Visualization**: Power BI, Matplotlib, Seaborn, Plotly  
- **Deployment**: Flask, GitHub, Git LFS  

---

## 📌 Future Enhancements

- Integrate real-time recommendation APIs  
- Add user journey visualization and funnel metrics  
- Enable A/B testing simulation for engine variants  
- Expand dashboard to include ROI and conversion attribution  

---

## 👤 Author

**Anesh Raj**  
Data Analyst | Data Scientist | Business Analyst  
Focused on multi-industry impact through predictive modeling and dashboarding.  
📍 Chennai, India  
🔗 [GitHub Profile](https://github.com/aneshraj-d96)
