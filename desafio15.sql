USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(300))
BEGIN
SELECT ROUND(AVG(e.Salary), 2) AS `Média salarial` 
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.job_id = j.job_id
WHERE j.job_title = cargo
GROUP BY j.job_title;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');