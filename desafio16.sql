USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA

BEGIN
DECLARE quantidadeDeEmpregos INT;
SELECT COUNT(*) FROM hr.job_history jhistory
INNER JOIN hr.employees employee
ON jhistory.EMPLOYEE_ID = employee.EMPLOYEE_ID
WHERE employee.EMAIL = email 
INTO quantidadeDeEmpregos
RETURN quantidadeDeEmpregos
END $$

DELIMITER ;
