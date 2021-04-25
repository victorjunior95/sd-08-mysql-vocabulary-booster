USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(*) FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE E.EMAIL = email INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
