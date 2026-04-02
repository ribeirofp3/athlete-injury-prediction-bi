# athlete-injury-prediction-bi

# ⚽ Athlete Injury Risk & Performance Analytics Dashboard

## 📌 Project Overview
This project provides a **Data-Driven solution** for sports science and medical departments to monitor athlete workload and prevent non-contact injuries. By integrating **SQL Server** for data architecture and **Power BI** for advanced analytics, the dashboard identifies athletes in the "Danger Zone" based on their Workload Ratio and Fatigue levels.

## 🛠️ Tech Stack
* **Database:** SQL Server (T-SQL)
* **Data Visualization:** Power BI
* **Analytics Logic:** DAX (Data Analysis Expressions)
* **Concepts:** Acute:Chronic Workload Ratio (ACWR), Sports Medicine, Injury Prevention.

## 🚀 Key Features
* **Injury Risk Matrix:** A Scatter Plot correlating *Workload Ratio* vs. *Reported Fatigue* to identify overtraining.
* **Medical Impact Analysis:** Breakdown of injuries by body part (Knee, Hamstring, etc.) and total days lost.
* **Real-time KPIs:** Instant visibility into Squad Availability and Injury Counts.
* **Dynamic Data Modeling:** Star Schema architecture for optimized performance.

## 📊 Business Insights
* **Knee Injuries** are the primary cause of absence, accounting for **69% of total days out** in this dataset.
* Athletes with a **Workload Ratio > 1.2** and **Fatigue > 7** are flagged for immediate recovery sessions.
* The system allows the coaching staff to adjust training intensity before injuries occur, optimizing squad availability.

## 📁 How to Reproduce
1.  Run the scripts in `/SQL_Scripts` to set up the database and populate it with 350+ training records.
2.  Open the `.pbix` file in `/PowerBI_Report`.
3.  Ensure the Data Source Settings point to your local SQL Server instance.

---
**Author:** [Your Name]  
**LinkedIn:** [Your LinkedIn Link]
