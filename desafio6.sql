SELECT CONCAT(EMP.first_name, ' ', EMP.last_name) AS 'Nome completo',
JOB.job_title AS 'Cargo',
JOH.start_date AS 'Data de início do cargo',
DEP.department_name AS 'Departamento'
FROM hr.job_history AS JOH
INNER JOIN hr.employees AS EMP ON JOH.employee_id = EMP.employee_id
INNER JOIN hr.jobs AS JOB ON JOH.job_id = JOB.job_id
INNER JOIN hr.departments AS DEP ON JOH.department_id = DEP.department_id
ORDER BY `Nome completo` DESC, `Cargo` ASC;
