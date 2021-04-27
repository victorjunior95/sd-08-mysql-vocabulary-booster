SELECT JOB_TITLE AS Cargo, 
format(((MAX_SALARY + MIN_SALARY)/2), 2) AS 'Média salarial',
CASE 
WHEN (MAX_SALARY + MIN_SALARY)/2 >= 2000.00 AND (MAX_SALARY + MIN_SALARY)/2 <= 5800.00 THEN 'Júnior'
WHEN (MAX_SALARY + MIN_SALARY)/2 >= 5801.00 AND (MAX_SALARY + MIN_SALARY)/2 <= 7500.00 THEN 'Pleno'
WHEN (MAX_SALARY + MIN_SALARY)/2 >= 7501.00 AND (MAX_SALARY + MIN_SALARY)/2 <= 10500.00 THEN 'Sênior'
WHEN (MAX_SALARY + MIN_SALARY)/2 >= 10501.00 THEN 'CEO'
ELSE 'Não classificado'
END AS Senioridade
FROM hr.jobs ORDER BY ((MAX_SALARY + MIN_SALARY) /2), Cargo;
