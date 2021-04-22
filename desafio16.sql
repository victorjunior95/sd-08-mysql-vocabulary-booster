DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE jobsQuantity INT;
	SELECT 
    COUNT(*)
FROM
    hr.job_history AS job
        INNER JOIN
    hr.employees AS emp ON job.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE
    emp.EMAIL = email
    INTO jobsQuantity;
    RETURN jobsQuantity;
END $$
DELIMITER ;
