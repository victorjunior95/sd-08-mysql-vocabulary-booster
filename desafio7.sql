SELECT UCASE(concat(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
DATE_FORMAT(START_DATE, '%d/%m/%Y') AS 'Data de início',
SALARY AS 'Salário'
FROM hr.employees AS E
INNER JOIN job_history AS JH
ON E.JOB_ID = JH.JOB_ID
WHERE MONTH(START_DATE) IN (1, 2, 3)
ORDER BY concat(FIRST_NAME, ' ', LAST_NAME), START_DATE;
