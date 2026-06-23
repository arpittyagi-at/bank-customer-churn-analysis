USE bank_churn;
-- ----------------------------------- 
SELECT COUNT(*) AS Total_Rows
FROM customer_churn;

-- Churn by Geography 
SELECT Geography,
ROUND(AVG(EXITED)*100,2) AS Churn_Rate
FROM customer_churn
GROUP BY geography
ORDER BY Churn_Rate DESC;

-- Churn  by Gender
SELECT Gender,
Round (AVG(Exited)*100,2) AS Churn_Rate
FROM customer_churn
GROUP BY Gender
ORDER BY Churn_Rate DESC;

-- Churn by Age Group
SELECT AgeGroup,
ROUND(AVG(Exited)*100,2) AS Churn_Rate
FROM customer_churn
GROUP BY AgeGroup
ORDER BY Churn_Rate DESC;


-- Churn by Activity Status
SELECT
IsActiveMember,
ROUND(AVG(Exited)*100,2) AS Churn_Rate
FROM customer_churn
GROUP BY IsActiveMember;


-- Active vs Inactive Customers
SELECT
IsActiveMember,
COUNT(*) AS Customer_Count
FROM customer_churn
GROUP BY IsActiveMember;

-- Churn by Number of Products
SELECT
NumOfProducts,
ROUND(AVG(Exited)*100,2) AS Churn_Rate
FROM customer_churn
GROUP BY NumOfProducts
ORDER BY NumOfProducts;


-- Average Balance by Geography
SELECT
Geography,
ROUND(AVG(Balance),2) AS Avg_Balance
FROM customer_churn
GROUP BY Geography
ORDER BY Avg_Balance DESC;

-- Average Salary by Geography
SELECT
Geography,
ROUND(AVG(EstimatedSalary),2) AS Avg_Salary
FROM customer_churn
GROUP BY Geography
ORDER BY Avg_Salary DESC;

-- Average Credit Score by Churn Status
SELECT
Exited,
ROUND(AVG(CreditScore),2) AS Avg_CreditScore
FROM customer_churn
GROUP BY Exited;

-- Revenue Risk
SELECT
ROUND(SUM(RevenueRisk),2) AS Total_Revenue_Risk
FROM customer_churn;

-- Revenue Risk by Geography

SELECT
Geography,
ROUND(SUM(RevenueRisk),2) AS Revenue_Risk
FROM customer_churn
GROUP BY Geography
ORDER BY Revenue_Risk DESC;

-- Revenue Risk by Age Group

SELECT
AgeGroup,
ROUND(SUM(RevenueRisk),2) AS Revenue_Risk
FROM customer_churn
GROUP BY AgeGroup
ORDER BY Revenue_Risk DESC;

-- Top 10 Revenue Risk Customers

SELECT *
FROM customer_churn
WHERE RevenueRisk > 0
ORDER BY RevenueRisk DESC
LIMIT 10;

-- High Value Customers

SELECT *
FROM customer_churn
ORDER BY CustomerValueScore DESC
LIMIT 20;

-- Churn Rate by Balance Segment

SELECT
BalanceSegment,
ROUND(AVG(Exited)*100,2) AS Churn_Rate
FROM customer_churn
GROUP BY BalanceSegment
ORDER BY Churn_Rate DESC;

-- Average Customer Value Score by Geography

SELECT
Geography,
ROUND(AVG(CustomerValueScore),2) AS Avg_Value_Score
FROM customer_churn
GROUP BY Geography
ORDER BY Avg_Value_Score DESC;

-- Customers with Above Average Balance

SELECT *
FROM customer_churn
WHERE Balance >
(
SELECT AVG(Balance)
FROM customer_churn
);

-- Senior Customers Who Churned

SELECT *
FROM customer_churn
WHERE AgeGroup='Senior'
AND Exited=1;

-- High Value Customers Who Churned

SELECT *
FROM customer_churn
WHERE CustomerValueScore > 150
AND Exited=1
ORDER BY CustomerValueScore DESC;

-- Geography Wise Customer Count

SELECT
Geography,
COUNT(*) AS Customer_Count
FROM customer_churn
GROUP BY Geography
ORDER BY Customer_Count DESC;

-- Age Group Distribution

SELECT
AgeGroup,
COUNT(*) AS Customer_Count
FROM customer_churn
GROUP BY AgeGroup
ORDER BY Customer_Count DESC;

-- Product Usage Distribution

SELECT
NumOfProducts,
COUNT(*) AS Customer_Count
FROM customer_churn
GROUP BY NumOfProducts
ORDER BY NumOfProducts;

-- Executive Summary KPI Query

SELECT
COUNT(*) AS Total_Customers,
ROUND(AVG(Exited)*100,2) AS Churn_Rate,
ROUND(AVG(Balance),2) AS Avg_Balance,
ROUND(AVG(CreditScore),2) AS Avg_CreditScore,
ROUND(SUM(RevenueRisk),2) AS Revenue_Risk
FROM customer_churn;


SELECT
    NumOfProducts,
    COUNT(*) AS Customers,
    ROUND(AVG(Exited)*100,2) AS Churn_Rate
FROM customer_churn
GROUP BY NumOfProducts
ORDER BY NumOfProducts;

SELECT
BalanceSegment,
COUNT(*) AS Customers,
ROUND(AVG(Exited)*100,2) AS Churn_Rate
FROM customer_churn
GROUP BY BalanceSegment
ORDER BY Churn_Rate DESC;

SELECT *
FROM customer_churn
WHERE BalanceSegment IS NULL
   OR BalanceSegment='';
   
UPDATE customer_churn
SET BalanceSegment='Low'
WHERE BalanceSegment IS NULL
   OR BalanceSegment='';