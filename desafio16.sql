USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_count INT;
SELECT COUNT(*) AS jobs_count
FROM hr.job_history AS job_history
JOIN hr.employees AS employees
ON employees.employee_id = job_history.employee_id
WHERE employees.email = email
INTO jobs_count;
RETURN jobs_count;
END $$
DELIMITER ;
