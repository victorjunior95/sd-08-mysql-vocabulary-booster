USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(*)
FROM employees e
INNER JOIN job_history jh ON e.employee_id = jh.employee_id
WHERE e.email = email
INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;

