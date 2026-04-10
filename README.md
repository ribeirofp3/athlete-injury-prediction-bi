# athlete-injury-prediction-bi

# Athlete Injury Risk & Performance Analytics Dashboard

![Dashboard Performance](ScreenshotsAthletes_Analysis_BI.png)

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

## Business Insights & Findings

Following the analysis of 50 athletes and over 350 training sessions, the following patterns were identified to support coaching staff decision-making:

* **Overloading Detection (Injury Risk Mitigation):** We identified that 12% of athletes exhibited an Acute:Chronic Workload Ratio (ACWR) above 1.5 over the last week. Based on sports science literature, these individuals are at a 3x higher risk of sustaining soft-tissue injuries within the next 7 days.
* **Recommended Action:** Immediate 20% reduction in training load (distance/intensity) for these specific athletes.Fatigue vs. Intensity Correlation:A strong positive correlation (approx 0.82) was observed between Distance_KM and Reported_Fatigue. Interestingly, Midfielders reach a fatigue level of 8 with 15% less distance covered compared to Defenders.
* **Insight:** The metabolic wear for midfielders is more accelerated, necessitating more frequent recovery protocols.
  
* **Underloading Identification:** Approximately 8 athletes maintained a ratio consistently below 0.8. This indicates a state of "de-training," where they are not being sufficiently challenged to maintain peak competitive levels.
* **Recommended Action:** Gradual increase in training load to prevent performance regression.

## How to Reproduce
1.  Run the scripts in `/SQL_Scripts` to set up the database and populate it with 350+ training records.
2.  Open the `.pbix` file in `/PowerBI_Report`.
3.  Ensure the Data Source Settings point to your local SQL Server instance.

---
**Author:** Fabrizio Ribeiro Pinto  
**LinkedIn:** [Your LinkedIn Link]
