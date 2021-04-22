DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_empregos INT;
SELECT COUNT(*) FROM hr.employees AS Employees
INNER JOIN hr.job_history AS Job_History ON Employees.employee_id = Job_History.employee_id
WHERE Employees.email = 'NKOCHHAR'
INTO quantidade_de_empregos;
RETURN quantidade_de_empregos;
END $$

DELIMITER ;
