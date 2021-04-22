USE hr;

DELIMITER $$ CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25)) RETURNS INT READS SQL DATA BEGIN	DECLARE quantidade INT;

SELECT COUNT(*) FROM hr.job_history AS j_h GROUP BY j_h.EMPLOYEE_ID	HAVING j_h.EMPLOYEE_ID = ( SELECT e.EMPLOYEE_ID FROM hr.employees AS e WHERE e.EMAIL = email) INTO quantidade;

RETURN quantidade;

END $$ DELIMITER ;
