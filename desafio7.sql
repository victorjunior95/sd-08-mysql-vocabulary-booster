USE hr;
SELECT 
    UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS `Nome Completo`,
    emp.HIRE_DATE AS `Data de início do cargo`,
    emp.SALARY AS `Salário`
FROM
    employees AS emp
ORDER BY `Nome Completo` DESC , emp.HIRE_DATE
;
	