SELECT CONCAT(E.first_name, ' ', E.last_name) AS `Nome completo`,
J.job_title AS `Cargo`,
JH.start_date AS `Data de início do cargo`,
D.department_name AS `Departamento`
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.jobs AS J ON J.JOB_ID = JH.JOB_ID
INNER JOIN hr.departments AS D ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
WHERE E.EMPLOYEE_ID IN (SELECT EMPLOYEE_ID FROM hr.job_history)
ORDER BY `Nome completo`DESC, `Cargo`;
