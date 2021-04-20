SELECT UCASE(CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME)) AS 'Nome completo',
jhistory.START_DATE AS 'Data de início do cargo',
employee.SALARY AS 'Salário'
FROM hr.employees employee
INNER JOIN hr.job_history jhistory
ON employee.EMPLOYEE_ID = jhistory.EMPLOYEE_ID
ORDER BY `Nome completo` DESC, jhistory.START_DATE;
