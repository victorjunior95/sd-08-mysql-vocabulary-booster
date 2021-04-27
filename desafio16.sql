USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE job_total INT;
SELECT 
    COUNT(h.JOB_ID)
FROM
    hr.job_history AS h
        INNER JOIN
    hr.employees AS e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    employee_email = e.EMAIL INTO job_total;
RETURN job_total;
END $$

DELIMITER ;
