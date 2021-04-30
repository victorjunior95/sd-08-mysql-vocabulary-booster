USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS VARCHAR(50) READS SQL DATA
BEGIN
    DECLARE result INT;
    SELECT COUNT(jh.EMPLOYEE_ID) AS total
    FROM hr.job_history as jh
    INNER JOIN hr.employees as e
    ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    WHERE e.EMAIL = email INTO result;
    RETURN result;
END $$

DELIMITER ;
