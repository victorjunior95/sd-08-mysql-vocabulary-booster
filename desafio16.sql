USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE jobs_quantity INT;
	SELECT COUNT(*)
    FROM job_history jh
    INNER JOIN employees e
    ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID AND e.EMAIL = employee_email INTO jobs_quantity;
    RETURN jobs_quantity;
END $$

DELIMITER ;
