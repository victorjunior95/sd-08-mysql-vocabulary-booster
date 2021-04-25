DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(E.salary), 2) AS 'Média salarial'
FROM hr.employees E
INNER JOIN hr.jobs J
ON E.job_id = J.job_id
WHERE cargo = J.job_title;
END $$

DELIMITER ;
