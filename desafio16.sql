USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE amountJob INT;
SELECT COUNT(jobh.EMPLOTEE_ID)
FROM hr.job_history AS jobh
INNER JOIN hr.employees AS employees ON employees.EMPLOYEE_ID = jobh.EMPLOYEE_ID
WHERE employees.EMAIL = email
INTO amountJob;
RETURN amountJob;
END $$

DELIMITER ;
