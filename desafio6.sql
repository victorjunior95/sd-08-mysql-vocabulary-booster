SELECT CONCAT(`FIRST_NAME`, ' ', `LAST_NAME`) AS 'Nome Completo', 
j.JOB_TITLE AS Cargo, jh.START_DATE  AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.job_id = j.job_id
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments AS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY`Nome Completo`DESC, Cargo;