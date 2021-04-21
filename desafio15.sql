DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN
	SELECT ROUND(AVG(E.SALARY), 2) AS `Média salarial`
    FROM hr.employees AS E
    INNER JOIN hr.jobs AS J 
    ON J.JOB_ID = E.JOB_ID 
    AND J.JOB_TITLE = job;
END $$

DELIMITER ;
