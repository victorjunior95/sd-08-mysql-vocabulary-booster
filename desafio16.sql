USE hr
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(mail VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE job_history_count INT;
SELECT COUNT(jh.job_ID)
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh 
ON jh.employee_id = e.employee_id
WHERE e.email = mail
INTO job_history_count;
RETURN job_history_count;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
