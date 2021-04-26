DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE jobsCount INT;
SELECT 
    COUNT(*)
FROM
    hr.employees AS employees
        INNER JOIN
    hr.job_history AS histor ON employees.EMPLOYEE_ID = histor.EMPLOYEE_ID
WHERE
    employees.EMAIL = EMAIL INTO jobsCount;
  RETURN jobsCount;
END $$

DELIMITER ;
