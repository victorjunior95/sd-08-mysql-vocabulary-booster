DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (EMAIL VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN

DECLARE Quantidade INT;
SELECT COUNT(j.EMPLOYEE_ID) INTO Quantidade
FROM hr.job_history AS j
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE e.EMAIL = EMAIL;
RETURN Quantidade;
END $$
    
DELIMITER ;
