USE hr;

DELIMITER $$ CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(25)) BEGIN	SELECT (SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) FROM hr.employees AS e WHERE e.EMPLOYEE_ID = j_h.EMPLOYEE_ID) AS 'Nome completo', (SELECT d.DEPARTMENT_NAME FROM hr.departments AS d WHERE d.DEPARTMENT_ID = j_h.DEPARTMENT_ID) AS 'Departamento', (SELECT j.JOB_TITLE FROM hr.jobs AS j WHERE j.JOB_ID = j_h.JOB_ID) AS 'Cargo' FROM hr.job_history AS j_h WHERE j_h.EMPLOYEE_ID = (SELECT e.EMPLOYEE_ID FROM hr.employees AS e WHERE e.EMAIL = email) ORDER BY `Departamento`, `Cargo` ;

END$$ DELIMITER ;
