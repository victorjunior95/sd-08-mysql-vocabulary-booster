SELECT UCASE(CONCAT(te.FIRST_NAME, ' ', te.LAST_NAME)) AS 'Nome completo',
        th.START_DATE AS 'Data de início',
        te.SALARY as 'Salário'
FROM hr.job_history AS th
INNER JOIN hr.employees as te ON th.EMPLOYEE_ID = te.EMPLOYEE_ID
INNER JOIN hr.jobs as tj ON th.JOB_ID = tj.JOB_ID
WHERE MONTH(th.START_DATE) IN (1, 2, 3)
ORDER BY CONCAT(te.FIRST_NAME, ' ', te.LAST_NAME), th.START_DATE;