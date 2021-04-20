DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
	SELECT ROUND(AVG(E.SALARY), 2) AS 'Média salarial' FROM hr.employees AS E
    INNER JOIN hr.jobs AS J ON E.JOB_ID = J.JOB_ID AND J.JOB_TITLE = cargo
    GROUP BY E.JOB_ID;
END $$

DELIMITER ;