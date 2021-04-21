USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE searchResult INT;
SELECT COUNT(*)
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email;
RETURN searchResult;
END $$
DELIMITER ;

SELECT COUNT(*)
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = 'NKOCHHAR';

SELECT * FROM hr.employees ORDER BY EMAIL;
SELECT * FROM hr.job_history;
