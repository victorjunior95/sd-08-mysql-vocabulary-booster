USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM employees e
INNER JOIN jobs j
ON e.JOB_ID = j.JOB_ID AND j.JOB_TITLE = job;
END $$

DELIMITER ;
