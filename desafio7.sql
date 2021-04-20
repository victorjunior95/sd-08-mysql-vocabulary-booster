SELECT UCASE(CONCAT(employ.first_name, ' ', employ.last_name)) AS `Nome completo`,
jhistory.start_date AS `Data de início`, salary AS `Salário`
FROM hr.employees employ
INNER JOIN hr.job_history jhistory
ON employ.EMPLOYEE_ID = jhistory.EMPLOYEE_ID
WHERE MONTH(jhistory.start_date) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
