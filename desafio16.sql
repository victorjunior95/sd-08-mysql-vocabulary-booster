USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_input VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT (
SELECT count(EMPLOYEE_ID) FROM job_history j
WHERE j.EMPLOYEE_ID = e.EMPLOYEE_ID
GROUP BY EMPLOYEE_ID ) AS 'quantidades'
FROM hr.employees AS e
WHERE EMAIL = email_input
INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;
