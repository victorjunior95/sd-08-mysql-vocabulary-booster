-- SELECT UPPER(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS `Nome Completo` FROM hr.employees;
SELECT
UPPER(CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME)) AS `Nome Completo`,
jhistory.START_DATE AS `Data de início do cargo`,
employee.SALARY AS "Salário"
FROM hr.employees AS employee
INNER JOIN hr.job_history AS jhistory
ON employee.EMPLOYEE_ID = jhistory.EMPLOYEE_ID
ORDER BY `Nome Completo`;
