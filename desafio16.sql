USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA 
BEGIN
DECLARE contador INT;
SELECT COUNT(*) FROM hr.employees AS e
INNER JOIN hr.job_history AS h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO contador;
RETURN contador;
END $$
DELIMITER ;
