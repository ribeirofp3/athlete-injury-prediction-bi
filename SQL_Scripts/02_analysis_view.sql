-- 3. ANALYSIS VIEW (Optional for Power BI)

CREATE VIEW v_AthleteSummary AS

SELECT 

    a.Full_Name,

    a.Position,

    AVG(t.Distance_KM) as Avg_Distance,

    AVG(t.Reported_Fatigue) as Avg_Fatigue

FROM Athletes a

JOIN Training_Performance t ON a.Athlete_ID = t.Athlete_ID

GROUP BY a.Full_Name, a.Position;
