SELECT JOB_TITLE AS Cargo, 
((MAX_SALARY + MIN_SALARY)) / 2 AS 'Média salarial',
CASE 
WHEN ROUND('Média salarial',2) >= 2000 AND ROUND('Média salarial',2) <= 5800 THEN 'Júnior'
WHEN ROUND('Média salarial',2) >= 5801 AND ROUND('Média salarial',2) <= 7500 THEN 'Pleno'
WHEN ROUND('Média salarial',2) >= 7501 AND ROUND('Média salarial',2) <= 10500 THEN 'Sênior'
WHEN ROUND('Média salarial',2) >= 10501 THEN 'CEO'
ELSE 'NÃO CLASSIFICADO'
END AS Senioridade
FROM hr.jobs ORDER BY 'Média salarial' ASC;
