USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_empregos INT;
SELECT COUNT(*) AS total_empregos
FROM hr.job_history AS JOB_HISTORY
INNER JOIN hr.employees AS EMPLOYEES
ON JOB_HISTORY.EMPLOYEE_ID = EMPLOYEES.EMPLOYEE_ID
WHERE EMPLOYEES.EMAIL = email INTO quantidade_empregos;
RETURN quantidade_empregos;
END $$

DELIMITER ;
