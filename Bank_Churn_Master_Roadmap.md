
# BANK CUSTOMER CHURN & REVENUE ANALYSIS
## Complete End-to-End Master Roadmap, Learning Guide & Interview Preparation Book

Author: Shiv
Target Roles:
- AWS Cloud Engineer
- Data Analyst
- Business Analyst

Recommended Duration:
10–14 Days


SECTION 1 — WHY THIS PROJECT MATTERS
============================================================

This project is designed to simulate a real-world banking analytics workflow.

You will learn:
- Data Cleaning
- Data Analysis
- Business Thinking
- SQL Querying
- Dashboard Building
- Storytelling with Data
- GitHub Project Structuring
- Interview Communication

Recruiters from TCS, Accenture, Cognizant, Wipro, EXL, Infosys and Capgemini prefer projects that:
- solve business problems
- use dashboards
- show SQL knowledge
- show data storytelling
- demonstrate structured workflow


SECTION 2 — FINAL TECH STACK
============================================================

Core Technologies:
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- SQL (MySQL)
- Power BI
- Excel
- Git & GitHub
- Jupyter Notebook

Future-Proof Additions:
- AWS S3
- AWS Athena
- Streamlit Deployment
- Machine Learning Churn Prediction

SECTION 3 — FINAL PROJECT STRUCTURE
============================================================

Bank-Churn-Analysis/
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── notebooks/
│
├── sql/
│
├── images/
│
├── dashboard/
│
├── reports/
│
├── README.md
│
└── requirements.txt


SECTION 4 — COMPLETE EXECUTION ROADMAP
============================================================

PHASE 1 — ENVIRONMENT SETUP

Tasks:
1. Install Python
2. Install VS Code
3. Install Git
4. Install MySQL
5. Install Power BI Desktop
6. Install Jupyter Notebook

Command:
pip install pandas numpy matplotlib seaborn jupyter sqlalchemy pymysql


LEARNING SECTION
============================================================

What is Pandas?
Pandas is a Python library used for handling structured data like Excel sheets and CSV files.

What is NumPy?
NumPy helps in fast numerical calculations.

What is Matplotlib?
Matplotlib creates charts and graphs.

What is Seaborn?
Seaborn creates advanced professional visualizations.

What is SQL?
SQL is used to query structured databases.

INTERVIEW QUESTIONS:
1. Why did you choose Python for analytics?
2. Difference between Pandas and NumPy?
3. Why is SQL important for analysts?
4. Why Power BI instead of Excel only?


PHASE 2 — DATASET COLLECTION
============================================================

Dataset:
https://www.kaggle.com/datasets/shantanudhakadd/bank-customer-churn-prediction

Execution Steps:
1. Create Kaggle account
2. Download dataset ZIP
3. Extract files
4. Move CSV into:
   data/raw/


LEARNING SECTION
============================================================

What is a dataset?
A dataset is a structured collection of data.

What is customer churn?
Customer churn means customers leaving the business.

Why churn matters?
Customer retention is cheaper than acquiring new customers.

INTERVIEW QUESTIONS:
1. What is churn analysis?
2. Why is churn prediction important?
3. What business value does churn analysis provide?


PHASE 3 — UNDERSTANDING DATA
============================================================

Columns:
- CreditScore
- Geography
- Gender
- Age
- Tenure
- Balance
- NumOfProducts
- HasCrCard
- IsActiveMember
- EstimatedSalary
- Exited

Execution Steps:
1. Open CSV in Excel
2. Observe all columns
3. Understand business meaning
4. Identify target column

Target Column:
Exited


LEARNING SECTION
============================================================

What is a target variable?
The variable we want to analyze or predict.

What are features?
Input columns affecting target.

INTERVIEW QUESTIONS:
1. What is the target variable?
2. Which columns influence churn?
3. Difference between feature and target?


PHASE 4 — JUPYTER NOTEBOOK SETUP
============================================================

Create:
notebooks/churn_analysis.ipynb

Notebook Sections:
1. Imports
2. Loading Data
3. Cleaning
4. EDA
5. SQL Insights
6. Recommendations

LEARNING SECTION
============================================================

Why use Jupyter?
It allows code + explanations + charts together.

INTERVIEW QUESTIONS:
1. Why use notebooks?
2. Advantages over normal Python scripts?


PHASE 5 — DATA LOADING
============================================================

Code:

import pandas as pd

df = pd.read_csv('../data/raw/churn.csv')


LEARNING SECTION
============================================================

What is a DataFrame?
A table-like structure in Pandas.

INTERVIEW QUESTIONS:
1. What is DataFrame?
2. Difference between CSV and Excel?


PHASE 6 — DATA INSPECTION
============================================================

Run:
df.head()
df.info()
df.describe()
df.isnull().sum()
df.duplicated().sum()

Goals:
- Understand structure
- Find nulls
- Find duplicates
- Understand distributions


LEARNING SECTION
============================================================

What are null values?
Missing values.

What are duplicates?
Repeated rows.

Why cleaning matters?
Bad data gives wrong insights.

INTERVIEW QUESTIONS:
1. How did you handle null values?
2. How did you remove duplicates?
3. Why is cleaning important?


PHASE 7 — DATA CLEANING
============================================================

Tasks:
- Remove RowNumber
- Remove CustomerId
- Remove Surname
- Remove duplicates
- Handle missing values


LEARNING SECTION
============================================================

Why remove CustomerId?
It has no business meaning.

INTERVIEW QUESTIONS:
1. Why drop unnecessary columns?
2. Which columns were useless?


PHASE 8 — FEATURE ENGINEERING
============================================================

Create:
- AgeGroup
- BalanceSegment
- RevenueRisk
- CustomerValueScore

LEARNING SECTION
============================================================

What is feature engineering?
Creating new useful columns from existing data.

Why important?
Improves business understanding.

INTERVIEW QUESTIONS:
1. What feature engineering did you perform?
2. Why create AgeGroup?
3. What is RevenueRisk?

PHASE 9 — EXPLORATORY DATA ANALYSIS
============================================================

Required Charts:
1. Churn Distribution
2. Geography vs Churn
3. Age Group vs Churn
4. Gender vs Churn
5. Balance Distribution
6. Correlation Heatmap
7. Product Usage Analysis
8. Salary vs Balance

For EVERY chart:
- Observation
- Business Meaning
- Recommendation

LEARNING SECTION
============================================================

What is EDA?
Exploratory Data Analysis means understanding patterns in data.

Why visualization matters?
Humans understand patterns visually.

INTERVIEW QUESTIONS:
1. What insights did you find?
2. Which country had highest churn?
3. Why inactive customers churn more?

PHASE 10 — SQL IMPLEMENTATION
============================================================

Create Database:
CREATE DATABASE bank_churn;

Important Queries:
1. Churn rate by geography
2. Average balance by age group
3. High value customers
4. Active vs inactive customers
5. Product usage analysis

LEARNING SECTION
============================================================

What is GROUP BY?
Used for aggregation by category.

What is AVG?
Returns average.

INTERVIEW QUESTIONS:
1. Difference between WHERE and HAVING?
2. What is GROUP BY?
3. Why use SQL if Python exists?

PHASE 11 — POWER BI DASHBOARD
============================================================

Dashboard Pages:
1. Executive Summary
2. Customer Analysis
3. Revenue Risk Analysis

KPIs:
- Total Customers
- Churn Rate
- Avg Balance
- Active Customer %
- Avg Credit Score
- Revenue Risk

LEARNING SECTION
============================================================

What is Power BI?
A business intelligence tool for dashboards.

Why dashboards matter?
Executives prefer visual summaries.

INTERVIEW QUESTIONS:
1. Why use Power BI?
2. What KPIs did you create?
3. Difference between dashboard and report?

PHASE 12 — GITHUB & DOCUMENTATION
============================================================

Steps:
1. Create GitHub repository
2. Push files
3. Add screenshots
4. Create professional README

README Sections:
- Overview
- Objectives
- Workflow
- Insights
- Dashboard Preview
- Recommendations

LEARNING SECTION
============================================================

Why GitHub matters?
Shows proof of work.

INTERVIEW QUESTIONS:
1. What is Git?
2. Difference between Git and GitHub?
3. Why maintain documentation?

PHASE 13 — FUTURE-PROOF IMPROVEMENTS
============================================================

Future Upgrades:
1. Deploy dashboard on Streamlit
2. Store data on AWS S3
3. Use AWS Athena
4. Add Machine Learning
5. Add real-time analytics
6. Create ETL pipeline

AWS INTEGRATION ROADMAP
============================================================

You are targeting AWS Cloud roles too.

Future Version:
CSV → S3 → Athena → Power BI

Skills Learned:
- Cloud Storage
- Serverless Analytics
- Cloud Querying

INTERVIEW QUESTIONS:
1. What AWS services can improve this project?
2. Why use S3?
3. What is Athena?

SECTION — RESUME BULLETS
============================================================

• Built an end-to-end Bank Customer Churn Analysis project using Python, SQL, Pandas, and Power BI to analyze customer behavior and identify churn patterns.

• Developed interactive dashboards with KPI metrics, customer segmentation, and revenue-risk analysis for business decision-making.

• Performed exploratory data analysis, feature engineering, and SQL querying on banking records to uncover customer retention opportunities.

SECTION — FINAL INTERVIEW PREPARATION
============================================================

MOST IMPORTANT QUESTIONS:

1. Explain your project end-to-end.
2. What business problem did you solve?
3. What insights did you discover?
4. Why did customers churn?
5. Why use SQL?
6. Why Power BI?
7. What challenges did you face?
8. Future improvements?
9. How can AWS improve this project?
10. What would you do if dataset size becomes huge?

FINAL SUCCESS STRATEGY
============================================================

Your project will stand out because:
- It is business-focused
- It uses dashboards
- It uses SQL
- It includes storytelling
- It includes future cloud scalability
- It demonstrates end-to-end workflow

This is exactly what companies expect from fresher analyst candidates.
