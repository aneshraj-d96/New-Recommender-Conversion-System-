# DATA ANALYST QUERIES

# 1. Session Count by User
SELECT User_ID, COUNT(*) AS session_count
FROM user_sessions
GROUP BY User_ID
ORDER BY session_count DESC;

# 2. Average Time Spent by Device Type
SELECT Device_Type, AVG(Time_Spent) AS avg_time_spent
FROM user_sessions
GROUP BY Device_Type;

# 3. Pages Viewed Distribution
SELECT Pages_Viewed, COUNT(*) AS frequency
FROM user_sessions
GROUP BY Pages_Viewed
ORDER BY Pages_Viewed;

# 4. Null or Missing Values Check
SELECT *
FROM user_sessions
WHERE User_ID IS NULL OR Session_ID IS NULL OR Age IS NULL
   OR Gender IS NULL OR Device_Type IS NULL OR Location IS NULL
   OR Time_Spent IS NULL OR Pages_Viewed IS NULL
   OR Recommended_Product_Category IS NULL
   OR Recommendation_Engine IS NULL OR Converted IS NULL;

# 5. Conversion Rate by Age Group
SELECT
  CASE
    WHEN Age < 18 THEN 'Under 18'
    WHEN Age BETWEEN 18 AND 25 THEN '18-25'
    WHEN Age BETWEEN 26 AND 35 THEN '26-35'
    WHEN Age BETWEEN 36 AND 50 THEN '36-50'
    ELSE '50+'
  END AS age_group,
  COUNT(*) AS total_sessions,
  SUM(Converted) AS conversions,
  ROUND(SUM(Converted) / COUNT(*) * 100, 2) AS conversion_rate
FROM user_sessions
GROUP BY age_group;

# 6. Time Spent vs Pages Viewed Correlation (manual inspection)
SELECT Time_Spent, Pages_Viewed
FROM user_sessions
ORDER BY Time_Spent DESC;

# 7. Top 10 Longest Sessions
SELECT User_ID, Session_ID, Time_Spent, Pages_Viewed
FROM user_sessions
ORDER BY Time_Spent DESC
LIMIT 10;

# BUSINESS ANALYST QUERIES

# 8. Overall Conversion Rate
SELECT
  COUNT(*) AS total_sessions,
  SUM(Converted) AS total_conversions,
  ROUND(SUM(Converted) / COUNT(*) * 100, 2) AS conversion_rate
FROM user_sessions;

# 9. Conversion Rate by Device Type
SELECT Device_Type,
       COUNT(*) AS total_sessions,
       SUM(Converted) AS conversions,
       ROUND(SUM(Converted) / COUNT(*) * 100, 2) AS conversion_rate
FROM user_sessions
GROUP BY Device_Type;

# 10. Conversion Rate by Gender
SELECT Gender,
       COUNT(*) AS total_sessions,
       SUM(Converted) AS conversions,
       ROUND(SUM(Converted) / COUNT(*) * 100, 2) AS conversion_rate
FROM user_sessions
GROUP BY Gender;

# 11. Most Recommended Product Categories
SELECT Recommended_Product_Category, COUNT(*) AS recommendation_count
FROM user_sessions
GROUP BY Recommended_Product_Category
ORDER BY recommendation_count DESC;

# 12. Recommendation Engine Performance
SELECT Recommendation_Engine,
       COUNT(*) AS total_sessions,
       SUM(Converted) AS conversions,
       ROUND(SUM(Converted) / COUNT(*) * 100, 2) AS conversion_rate
FROM user_sessions
GROUP BY Recommendation_Engine;

# 13. Location-Based Conversion Insights
SELECT Location,
       COUNT(*) AS total_sessions,
       SUM(Converted) AS conversions,
       ROUND(SUM(Converted) / COUNT(*) * 100, 2) AS conversion_rate
FROM user_sessions
GROUP BY Location
ORDER BY conversion_rate DESC;

# 14. Conversion Rate by Product Category
SELECT Recommended_Product_Category,
       COUNT(*) AS total_sessions,
       SUM(Converted) AS conversions,
       ROUND(SUM(Converted) / COUNT(*) * 100, 2) AS conversion_rate
FROM user_sessions
GROUP BY Recommended_Product_Category
ORDER BY conversion_rate DESC;
