-- 6 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas
SELECT 
sub.`Nome completo` AS 'Nome completo',
sub.`Cargo` AS 'Cargo',
sub.`Date` AS 'Data de início do cargo',
sub.`Depart` AS 'Departamento'
FROM (
SELECT  j.JOB_TITLE AS 'Cargo', 
CONCAT(e.FIRST_NAME,' ', e.LAST_NAME)   AS 'Nome completo', jh.START_DATE AS 'Date',  d.DEPARTMENT_NAME AS 'Depart' FROM hr.job_history AS  jh 
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON jh.JOB_ID = j.JOB_ID
INNER JOIN hr.departments AS d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
) AS sub
ORDER BY 1 DESC, 2;
-- SELECT * FROM hr.job_history;
