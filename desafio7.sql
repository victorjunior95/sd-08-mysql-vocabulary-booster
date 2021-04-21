SELECT UPPER(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS `Nome completo`, 
MONTH(jhis.START_DATE) AS `Data de início`,
emp.SALARY AS `Salário`
FROM
hr.employees AS emp,
hr.job_history AS jhis
WHERE
emp.EMPLOYEE_ID = jhis.EMPLOYEE_ID
AND
MONTH(jhis.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
