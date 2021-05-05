USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_count INT;
SELECT 
    COUNT(j.JOB_ID)
FROM
    hr.job_history AS j
        INNER JOIN
    hr.employees AS e ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE
    employeeEmail = e.EMAIL INTO jobs_count;
RETURN jobs_count;
END $$

DELIMITER ;
