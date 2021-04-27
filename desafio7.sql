SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS `Nome completo`,
jobshistory.START_DATE AS `Data de início`,
employees.SALARY AS `Salário`
FROM 
hr.job_history AS jobshistory
INNER JOIN hr.employees AS employees
ON jobshistory.EMPLOYEE_ID = employees.EMPLOYEE_ID 
WHERE 
MONTH(jobshistory.START_DATE) IN(1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
