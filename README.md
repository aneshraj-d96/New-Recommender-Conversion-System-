# 🔄 New Recommender Conversion System

A data-driven recommender system built to optimize product suggestions and boost user conversion rates. This project analyzes 200K+ user sessions to evaluate recommendation engine performance and predict conversion outcomes using Flask for deployment.

---
## 🚗 GitHub Project Repository: 
[Click to view New-Recommender-Conversion-System](https://github.com/aneshraj-d96/New-Recommender-Conversion-System-)

---
## 🧠 Project Overview

Recommendation engines are key to driving engagement and sales. This system evaluates user behavior, device usage, and recommendation strategies to predict conversion likelihood and improve targeting.

**Key Objectives:**
- Clean and preprocess session-level user data  
- Analyze recommendation engine effectiveness  
- Build predictive models for conversion likelihood  
- Deploy interactive web app using Flask for business insights  

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
- Normalized `Time_Spent` and `Pages_Viewed`  
- Removed duplicates and ensured type consistency  
- Converted `Converted` to binary target variable  

---

## 📈 Exploratory Data Analysis

- Conversion trends by age, gender, and device type  
- Time spent vs. conversion correlation  
- Recommendation engine performance (Old vs. New)  
- Product category effectiveness  
- Location-based engagement patterns  

**Power BI Dashboard**  
<img src="https://image2url.com/images/1755857842235-4cf63a6a-c0c0-4967-85cc-66157ca1d2b9.png" alt="Dashboard Preview" width="600"/>
<img src="https://image2url.com/images/1755857940558-29497c42-adfd-46b2-a013-aadb5d66423e.png" alt="Dashboard Preview" width="600"/>
 
---

## 🤖 Modeling Approach

- **Target Variable**: `Converted`  
- **Algorithms Used**: Logistic Regression, Random Forest, XGBoost  
- **Evaluation Metrics**: Accuracy, ROC-AUC, Precision, Recall  
- **Feature Importance**: `Time_Spent`, `Pages_Viewed`, `Recommendation_Engine`, `Device_Type`  

---

## 🌐 Web App Overview

Built using **Flask**, the web app includes:

- 📈 Conversion rate trends  
- 🧠 Recommendation engine comparison  
- 📊 User engagement metrics  
- 🛍️ Product category performance  
- 📍 Location-based conversion heatmap  

**Flask app Dashboard**

  <img src="https://image2url.com/images/1755857985692-202290a3-31be-4ceb-8f57-60543c50ea04.png" alt="Dashboard Preview" width="600"/>  
  <img src="https://image2url.com/images/1755858043723-87f0849e-0c92-4ed6-8b93-ac6e85fe0396.png" alt="Dashboard Preview" width="600"/>
  
---

## 🚀 Deployment

- Model serialized with `joblib` as `conversion_model.pkl`  
- Flask app served via `app.py` with HTML templates  
- SQL integration for dynamic session querying  
- Git LFS used for large file management  

---

## 🧠 Business Impact

- Identifies high-converting user segments  
- Optimizes recommendation engine strategies  
- Enhances personalization and targeting  
- Drives higher engagement and conversion rates  

---

## 🛠️ Tech Stack

- **Python**: Pandas, NumPy, Scikit-learn, Flask  
- **SQL**: Data extraction and filtering  
- **Visualization**: Matplotlib, Seaborn, Plotly  
- **Deployment**: Flask, GitHub, Git LFS  

---

## 📌 Future Enhancements

- Integrate real-time recommendation APIs  
- Add user journey visualization  
- Enable A/B testing simulation for engine variants  
- Expand dashboard to include ROI and funnel metrics  

---

## 👤 Author

**Anesh Raj**  
Data Analyst | Data Scientist | Business Analyst  
Focused on multi-industry impact through predictive modeling and dashboarding.  
📍 Chennai, India
