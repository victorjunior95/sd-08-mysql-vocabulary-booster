USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(200))
BEGIN
SELECT ROUND(AVG(e.SALARY),2) AS `Média salarial`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_title, e.JOB_ID
HAVING j.JOB_title = cargo;
END

$$ DELIMITER ;
