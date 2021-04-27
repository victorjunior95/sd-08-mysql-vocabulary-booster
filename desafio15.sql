USE hr
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.salary), 2) AS `Média salarial`
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON j.job_id = e.job_id
WHERE j.job_title = cargo;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
