USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j ON e.job_ID = j.job_ID
WHERE job = j.job_title
GROUP BY e.job_ID;
END $$
DELIMITER ;
