SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS Cargo,
h.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS e, hr.jobs AS j, hr.job_history AS h, hr.departments AS d
WHERE h.DEPARTMENT_ID = d.DEPARTMENT_ID AND h.EMPLOYEE_ID = e.EMPLOYEE_ID AND j.JOB_ID = h.JOB_ID
ORDER BY `Nome completo` DESC, Cargo;
