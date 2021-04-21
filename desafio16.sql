USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_funcionario VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(*) FROM `job_history`
WHERE EMPLOYEE_ID IN ( SELECT EMPLOYEE_ID FROM `employees` WHERE EMAIL = email_funcionario )
INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;
