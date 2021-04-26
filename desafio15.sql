USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.SALARY),2) AS 'Média salarial'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j ON e.JOB_ID = j.JOB_ID
WHERE job = j.JOB_TITLE
GROUP BY e.JOB_ID;
END $$
DELIMITER ;