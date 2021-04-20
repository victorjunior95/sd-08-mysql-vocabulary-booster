USE hr; 
DELIMITER $$ 
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(100)) 
RETURNS INT READS SQL DATA
BEGIN 
DECLARE totalJobs INT;
SELECT COUNT(jh.JOB_ID)
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID 
WHERE  e.email = employeeEmail INTO totalJobs;
RETURN totalJobs;
END $$ 

DELIMITER ; 

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR')
