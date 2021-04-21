SELECT UCASE(CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME)) AS 'Nome completo',
jhistory.START_DATE AS 'Data de início',
employee.SALARY AS 'Salário'
FROM hr.job_history jhistory 
INNER JOIN hr.employees employee
ON jhistory.EMPLOYEE_ID = employee.EMPLOYEE_ID
WHERE MONTH(jhistory.START_DATE) IN (01,02,03)
ORDER BY `Nome completo`, jhistory.START_DATE;
