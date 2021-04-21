SELECT
UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
emp.SALARY AS 'Salário'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS job
ON job.JOB_ID = jh.JOB_ID
WHERE MONTH(jh.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo`, `Data de início`;
