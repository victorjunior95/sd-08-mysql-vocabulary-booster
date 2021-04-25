USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(*)
    FROM job_history AS JH
    INNER JOIN employees AS E ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
    WHERE E.EMAIL = email INTO total;
    RETURN total;
END $$

DELIMITER ;
