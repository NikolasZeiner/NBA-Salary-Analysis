SELECT 
    Position,
    COUNT(*) AS player_count,
    ROUND(AVG(Salary_M), 2) AS avg_salary,
    ROUND(AVG(PTS), 1) AS avg_points,
    ROUND(AVG(Value_Score), 2) AS avg_value
FROM players
WHERE Position IN ('PG', 'SG', 'SF', 'PF', 'C')
GROUP BY Position
ORDER BY avg_salary DESC;
OG