SELECT CONCAT(te.FIRST_NAME, ' ', te.LAST_NAME) AS 'Nome completo',
		tj.JOB_TITLE AS 'Cargo',
        th.START_DATE AS 'Data de início do cargo',
        td.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS th
INNER JOIN hr.employees as te ON th.EMPLOYEE_ID = te.EMPLOYEE_ID
INNER JOIN hr.jobs as tj ON th.JOB_ID = tj.JOB_ID
INNER JOIN hr.departments as td ON th.DEPARTMENT_ID = td.DEPARTMENT_ID
ORDER BY CONCAT(te.FIRST_NAME, ' ', te.LAST_NAME) DESC, tj.JOB_TITLE;