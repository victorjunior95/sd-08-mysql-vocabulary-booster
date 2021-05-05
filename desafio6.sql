SELECT concat(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
JOB_TITLE AS Cargo,
START_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME AS 'Departamento'
FROM hr.jobs AS J
INNER JOIN hr.employees AS E
ON J.JOB_ID = E.JOB_ID
INNER JOIN hr.job_history AS JH
ON JH.JOB_ID =  J.JOB_ID
INNER JOIN hr.departments AS D
ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
ORDER BY concat(FIRST_NAME, ' ', LAST_NAME), Cargo;
