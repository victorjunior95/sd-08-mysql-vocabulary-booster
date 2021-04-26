SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo', 
j.JOB_TITLE AS Cargo, 
jh.START_DATE  AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS jh
INNER JOIN hr.jobs AS j
ON jh.job_id = j.job_id
INNER JOIN hr.departments AS d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID= e.EMPLOYEE_ID
ORDER BY`Nome completo`DESC, Cargo;