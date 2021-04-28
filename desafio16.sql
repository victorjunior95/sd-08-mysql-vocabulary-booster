USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE empregos INT;
    SELECT COUNT(*)
    FROM employees AS e
    INNER JOIN job_history AS jb
    ON jb.employee_id = e.employee_id
    WHERE e.email LIKE CONCAT("%", email , "%")
    INTO empregos;
RETURN empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
