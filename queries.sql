-- Use Database
USE risk_analysis;

-- View Data
SELECT * FROM risk_data;

-- High Risk Transactions
SELECT * 
FROM risk_data 
WHERE Risk_Level = 'High';

-- Risk by Region
SELECT Region, AVG(Risk_Score) AS Avg_Risk
FROM risk_data
GROUP BY Region;

-- Risk by Payment Method
SELECT Payment_Method, AVG(Risk_Score) AS Avg_Risk
FROM risk_data
GROUP BY Payment_Method;

-- Fraud vs Risk
SELECT Fraud_Flag, AVG(Risk_Score) AS Avg_Risk
FROM risk_data
GROUP BY Fraud_Flag;

-- Top Risk Transactions
SELECT *
FROM risk_data
ORDER BY Risk_Score DESC;