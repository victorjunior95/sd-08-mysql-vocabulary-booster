SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
j.JOB_TITLE AS `Cargo`,
h.START_DATE AS `Data de início do cargo`, d.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS e
RIGHT JOIN hr.job_history AS h
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON h.JOB_ID = j.JOB_ID
INNER JOIN hr.departments AS d
ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;

SELECT * FROM hr.job_history;