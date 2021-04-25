SELECT JOB_TITLE AS Cargo, ROUND(AVG(MAX_SALARY), 2) AS 'Média Salarial',
(CASE
	WHEN MAX_SALARY <= 5800 THEN 'Júnior'
	WHEN MAX_SALARY <= 7500 THEN 'Pleno'
    WHEN MAX_SALARY <= 10500 THEN 'Sênior'
    ELSE 'CEO'
    END 
)AS Senioridade
FROM jobs
ORDER BY `Média Salarial`;
