SELECT concat(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
JOB_TITLE AS Cargo,
START_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME AS 'Departamento'
FROM
hr.job_history AS JH
INNER JOIN hr.employees AS E 
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.jobs AS J 
ON J.JOB_ID = JH.JOB_ID
INNER JOIN hr.departments AS D 
ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
