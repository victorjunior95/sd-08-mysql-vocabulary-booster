SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
J.JOB_TITLE AS `Cargo`,
JH.START_DATE AS `Data de início do cargo`,
D.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees E
INNER JOIN hr.jobs J
ON E.JOB_ID = J.JOB_ID
INNER JOIN job_history JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
INNER JOIN hr.departments D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Nome completo` ASC;
