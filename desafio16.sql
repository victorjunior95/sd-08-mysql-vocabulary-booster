USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(*) FROM hr.employees AS E
INNER JOIN job_history AS H ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE E.EMAIL = email INTO quantidade;
RETURN quantidade;
END $$
DELIMITER ;
