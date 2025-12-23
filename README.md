**SaaS Data Cleaning & Analytics Project (SQL Server + Power BI)**

📌 **Project Overview**

This project demonstrates an end-to-end data analytics workflow for a SaaS business, starting from raw CSV files and ending with clean, analysis-ready data used for Power BI dashboards.

The focus is on:

Data cleaning and transformation using SQL Server (SSMS)

Preparing structured tables for analytics

Enabling insights such as revenue trends, churn analysis, and user engagement

🗂️ **Project Structure**

├── data/
│   ├── users.csv
│   ├── subscriptions.csv
│   └── events_saas.csv
│
├── sql/
│   └── SaaS_Data_Cleaning_SQL_Server.sql
│
├── powerbi/
│   └── SaaS_Analytics_Dashboard.pbix
│
└── README.md

🧾 **Data Description**

**Users**

Contains user signup information:

user_id

signup_date

country

plan

**Subscriptions**

Tracks subscription and revenue details:

user_id

subscription_status

plan

revenue

churn_date

**Events**

Captures product usage events:

user_id

event_date

event_type

**Data Cleaning (SQL Server)**

The SQL script performs the following tasks:

Converts text fields to proper data types (DATE, DATETIME, DECIMAL)

Trims whitespace and standardizes text values

Fixes inconsistent plan and country names

Handles NULL values safely

Removes duplicate events

Creates cleaned tables for analytics:

users_clean

subscriptions_clean

events_clean

**File:**

sql/SaaS_Data_Cleaning_SQL_Server.sql

📊 Power BI Dashboards

The cleaned data is used to build interactive dashboards in Power BI, including:

**Executive Overview**

Total Users

Active Subscribers

Total Revenue

Churn Rate

💰 Revenue & Subscription Analysis

Revenue by plan and month

Subscribers by country and plan

❌ Churn Analysis

Churned users over time

Churn by plan and country

⚙️ Product Usage Analytics

Event frequency by type

Engagement by subscription plan

🛠️ Tools & Technologies

SQL Server (SSMS) – Data cleaning & transformation

Power BI – Data modeling & visualization

CSV – Raw data source

GitHub – Version control & project sharing

🎯 Key Skills Demonstrated

SQL data cleaning & transformation

Analytical data modeling

SaaS metrics (Revenue, Churn, Engagement)

Power BI dashboard design

End-to-end analytics workflow

🚀 How to Run the Project

Import CSV files into SQL Server as staging tables

Run the SQL script to create cleaned tables

Load cleaned tables into Power BI

Build or refresh dashboards

**Contact**

If you have questions or feedback, feel free to reach out or connect with me on 

Email : rahouhabib2@gmail.com

LinkedIn : https://www.linkedin.com/in/habib-rahou-921823165/
