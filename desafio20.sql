USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario( IN email VARCHAR(20))
BEGIN
	SELECT CONCAT(tb_empl.FIRST_NAME, ' ', tb_empl.LAST_NAME) AS 'Nome completo',
	tb_dep.DEPARTMENT_NAME AS 'Departamento',
	tb_job.JOB_TITLE AS 'Cargo'
	FROM hr.employees AS tb_empl
	INNER JOIN hr.job_history AS tb_hist
	ON tb_empl.EMPLOYEE_ID = tb_hist.EMPLOYEE_ID
	INNER JOIN hr.departments AS tb_dep
	ON tb_hist.DEPARTMENT_ID = tb_dep.DEPARTMENT_ID
	INNER JOIN hr.jobs AS tb_job
	ON tb_hist.JOB_ID = tb_job.JOB_ID WHERE tb_empl.EMAIL = email ORDER BY tb_dep.DEPARTMENT_NAME ASC, 
	tb_job.JOB_TITLE ASC;
END $$

DELIMITER ;
