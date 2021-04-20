SELECT CONCAT(UCASE(Employees.FIRST_NAME), ' ', UCASE(Employees.LAST_NAME)) AS `Nome completo`, Job_history.START_DATE AS `Data de início`,
Employees.SALARY AS `Salário`
FROM hr.employees AS `Employees`
INNER JOIN hr.job_history AS `Job_history`
ON Employees.EMPLOYEE_ID = Job_history.EMPLOYEE_ID
WHERE MONTH(Job_history.START_DATE) IN(01, 02, 03)
ORDER BY `Nome Completo`, `Data de início`;
