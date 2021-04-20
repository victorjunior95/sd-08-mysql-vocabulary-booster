DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE quantidade_de_empregos INT;
	SELECT COUNT(*) FROM hr.employees AS E
    INNER JOIN hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
    WHERE E.EMAIL = 'NKOCHHAR'
    INTO quantidade_de_empregos;
    RETURN quantidade_de_empregos;
END $$

DELIMITER ;
