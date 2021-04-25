USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE number_of_jobs INT;
SELECT COUNT(jh.EMPLOYEE_ID)
FROM hr.job_history AS jh
WHERE jh.employee_ID = (SELECT e.EMPLOYEE_ID FROM hr.employees AS e WHERE e.EMAIL = email)
INTO number_of_jobs;
RETURN number_of_jobs;
END $$

DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
