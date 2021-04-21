USE hr;
SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS `Nome Completo`,
jobh.START_DATE AS `Data de início do cargo`,
emp.SALARY AS `Salário`
FROM employees AS emp,
job_history AS jobh
WHERE MONTH(jobh.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome Completo` DESC , emp.HIRE_DATE;
	