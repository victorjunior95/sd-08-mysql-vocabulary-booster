SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS "Nome completo",
jobH.START_DATE AS "Data de início",
emp.SALARY AS "Salário"
FROM hr.job_history AS jobH
INNER JOIN hr.employees AS emp
ON emp.EMPLOYEE_ID = jobH.EMPLOYEE_ID
WHERE MONTH(jobH.start_date) IN (1, 2, 3)
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME), jobH.START_DATE;
