USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(salary), 2) AS `Média salarial`
FROM employees e
INNER JOIN jobs j ON j.job_id = e.job_id
WHERE j.job_title = cargo;
END $$

DELIMITER ;
