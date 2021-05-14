USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT; 
SELECT COUNT(hst.JOB_ID)
FROM hr.job_history AS hst
INNER JOIN hr.employees AS employ
ON hst.EMPLOYEE_ID =  employ.EMPLOYEE_ID
WHERE employ.EMAIL = email
INTO result;

RETURN result;
END $$

DELIMITER ;

