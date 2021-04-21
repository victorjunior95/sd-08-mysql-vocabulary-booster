-- SELECT UPPER(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS `Nome Completo` FROM hr.employees;
SELECT
UPPER(CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME)) AS `Nome Completo`,
jhistory.START_DATE AS `Data de início`,
employee.SALARY AS "Salário"
FROM hr.employees AS employee
INNER JOIN hr.job_history AS jhistory
ON employee.EMPLOYEE_ID = jhistory.EMPLOYEE_ID
WHERE MONTH(jhistory.START_DATE) IN (01, 02, 03)
ORDER BY `Nome Completo`, `Data de início`;
