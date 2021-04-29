DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN

SELECT ROUND((SUM(e.SALARY)/COUNT(e.JOB_ID)), 2) AS `Média salarial`
FROM hr.jobs AS j
INNER JOIN hr.employees AS e ON j.JOB_ID = e.JOB_ID
WHERE j.JOB_TITLE = cargo;

END $$

DELIMITER ;
