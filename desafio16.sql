DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE count_email INT;
SELECT COUNT(E.EMAIL)
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE E.EMAIL = email INTO count_email;
RETURN count_email;
END $$
DELIMITER ;
