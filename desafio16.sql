DELIMITER $

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobAmount INT;
SELECT COUNT(employees.EMPLOYEE_ID) FROM hr.employees AS employees
INNER JOIN hr.job_history AS hist
ON employees.EMPLOYEE_ID = hist.EMPLOYEE_ID
WHERE employees.EMAIL = email
INTO jobAmount;
RETURN jobAmount;
END $

DELIMITER ;
