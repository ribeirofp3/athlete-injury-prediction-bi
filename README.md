# athlete-injury-prediction-bi

# Athlete Injury Risk & Performance Analytics Dashboard

![Dashboard Performance](Screenshots/Power_BI_%20Dashboard.png))

## Project Overview
This project provides a **Data-Driven solution** for sports science and medical departments to monitor athlete workload and prevent non-contact injuries. By integrating **SQL Server** for data architecture and **Power BI** for advanced analytics, the dashboard identifies athletes in the "Danger Zone" based on their Workload Ratio and Fatigue levels.

## Tech Stack
* **Database:** SQL Server (T-SQL)
* **Data Visualization:** Power BI
* **Analytics Logic:** DAX (Data Analysis Expressions)
* **Concepts:** Acute:Chronic Workload Ratio (ACWR), Sports Medicine, Injury Prevention.

## Key Features
* **Injury Risk Matrix:** A Scatter Plot correlating *Workload Ratio* vs. *Reported Fatigue* to identify overtraining.
* **Medical Impact Analysis:** Breakdown of injuries by body part (Knee, Hamstring, etc.) and total days lost.
* **Real-time KPIs:** Instant visibility into Squad Availability and Injury Counts.
* **Dynamic Data Modeling:** Star Schema architecture for optimized performance.

## Business Insights
* **Visual Storytelling:** The dashboard utilizes conditional formatting to highlight critical injury areas. **Knee injuries** represent nearly **50% of total days out**, signaling a need for specific preventive strength training.
* **Risk Correlation:** By plotting Workload vs. Fatigue, we can see that athletes in the **Upper Right Quadrant** (High Workload/High Fatigue) are at imminent risk.
* **Data Granularity:** The report processes over 350 individual training sessions to calculate precise averages, moving beyond static snapshots to trend-based analysis.

## How to Reproduce
1.  Run the scripts in `/SQL_Scripts` to set up the database and populate it with 350+ training records.
2.  Open the `.pbix` file in `/PowerBI_Report`.
3.  Ensure the Data Source Settings point to your local SQL Server instance.

---
**Author:** Fabrizio Ribeiro Pinto  
**LinkedIn:** [Your LinkedIn Link]
