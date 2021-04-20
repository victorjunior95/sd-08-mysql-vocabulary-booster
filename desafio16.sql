USE hr;
DELIMITER $$ 

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario4(email_func VARCHAR(300))
RETURNS INT READS SQL DATA 
BEGIN 
DECLARE total_jobs INT;
SELECT COUNT(jhist.job_id)
FROM hr.job_history AS jhist 
INNER JOIN hr.employees AS e
ON e.employee_id = jhist.employee_id
WHERE e.email = email_func 
INTO total_jobs;
RETURN total_jobs;
END $$ 

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario4('NKOCHHAR');
