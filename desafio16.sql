USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA

BEGIN
DECLARE quantidade_empregos INT;
SELECT COUNT(j.employee_id)
FROM hr.job_history AS j
INNER JOIN hr.employees AS e
ON j.employee_id = e.employee_id 
WHERE e.EMAIL = email
INTO quantidade_empregos;
RETURN quantidade_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');

