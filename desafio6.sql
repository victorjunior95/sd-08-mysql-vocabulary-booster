SELECT CONCAT(E.first_name, ' ', E.last_name) AS `Nome completo`,
J.job_title AS `Cargo`,
E.hire_date AS `Data de início do cargo`,
D.department_name AS `Departamento`
FROM hr.employees AS E
INNER JOIN hr.jobs AS J ON J.JOB_ID = E.JOB_ID
INNER JOIN hr.departments AS D ON E.department_id = D.department_id
WHERE E.EMPLOYEE_ID NOT IN(SELECT EMPLOYEE_ID FROM hr.job_history)
ORDER BY `Nome completo` DESC, `Cargo`;
