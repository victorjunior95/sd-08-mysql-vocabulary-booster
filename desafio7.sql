SELECT
UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS "Nome completo",
jobhist.START_DATE AS "Data de início",
employees.SALARY AS "Salário"
FROM hr.job_history AS jobhist
INNER JOIN hr.employees AS employees
ON employees.EMPLOYEE_ID = jobhist.EMPLOYEE_ID
WHERE MONTH(jobhist.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
