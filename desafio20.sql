DELIMITER $

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
dep.DEPARTMENT_NAME AS "Departamento",
jobs.JOB_TITLE AS "Cargo"
FROM hr.job_history AS hist
INNER JOIN hr.employees AS emp
ON emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = hist.DEPARTMENT_ID
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = hist.JOB_ID
WHERE E.EMAIL = 'NKOCHHAR'
ORDER BY `Cargo`;
END $

DELIMITER ;
