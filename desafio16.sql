USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(e_mail VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_jobs INT;
SELECT COUNT(h.JOB_ID) AS `total_empregos`
FROM hr.job_history AS h
INNER JOIN hr.employees AS e
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
GROUP BY EMAIL
HAVING EMAIL = e_mail INTO total_jobs;
RETURN total_jobs;
END 

$$ DELIMITER ;
