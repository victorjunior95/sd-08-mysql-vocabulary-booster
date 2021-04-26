USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailDoFuncionario VARCHAR(50))
RETURNS INT READS SQL DATA

BEGIN
DECLARE quantidadeDeEmpregos INT;
SELECT COUNT(*) FROM job_history jhistory
INNER JOIN employees employee
ON jhistory.EMPLOYEE_ID = employee.EMPLOYEE_ID
WHERE employee.EMAIL = emailDoFuncionario
INTO quantidadeDeEmpregos;
RETURN quantidadeDeEmpregos;
END $$

DELIMITER ;
