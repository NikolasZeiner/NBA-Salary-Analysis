SELECT 
    Team,
    COUNT(*) AS player_count,
    ROUND(SUM(Salary_M), 2) AS total_payroll,
    ROUND(AVG(Salary_M), 2) AS avg_salary,
    ROUND(AVG(PTS), 1) AS avg_points,
    ROUND(AVG(Value_Score), 2) AS avg_value
FROM players
WHERE Team NOT LIKE '%/%'
GROUP BY Team
ORDER BY total_payroll DESC
LIMIT 10;