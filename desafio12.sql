SELECT
CONCAT(emp1.FIRST_NAME, ' ', emp1.LAST_NAME) AS `Nome completo funcionário 1`,
CONCAT(emp2.FIRST_NAME, ' ', emp2.LAST_NAME) AS `Nome completo funcionário 2`
FROM hr.employees AS emp1, hr.employees AS emp2
WHERE emp1.JOB_ID = emp2.JOB_ID AND emp1.EMPLOYEE_ID <> emp2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
