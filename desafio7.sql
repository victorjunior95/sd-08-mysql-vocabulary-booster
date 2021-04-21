SELECT
UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
JH.START_DATE AS `Data de início`,
E.SALARY AS `Salário`
FROM hr.employees E
INNER JOIN job_history JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE MONTH(JH.START_DATE) IN(01, 02, 03)
ORDER BY `Nome completo` ASC, `Data de início` ASC;
