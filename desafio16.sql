DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailInput VARCHAR(35))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobCount INT;
SELECT COUNT(EMPLOYEE_ID) FROM hr.job_history WHERE EMPLOYEE_ID 
IN(
SELECT employee_id FROM hr.employees WHERE email = emailInput)
INTO jobCount;
RETURN jobCount;
END $$
DELIMITER ;
