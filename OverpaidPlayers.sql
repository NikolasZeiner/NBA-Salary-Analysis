SELECT 
    "Player Name" AS Player,
    Team,
    Position,
    ROUND(Salary_M, 2) AS Salary_M,
    ROUND(PTS, 1) AS Points,
    ROUND(Value_Score, 2) AS Value_Score
FROM players
WHERE Salary_M > 20
AND PTS < 15
ORDER BY Salary_M DESC
LIMIT 15;