SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
jh.START_DATE  AS 'Data de início',
e.SALARY as  Salário
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, jh.START_DATE;
