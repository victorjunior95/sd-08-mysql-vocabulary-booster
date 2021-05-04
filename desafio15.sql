USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
	IN nome_cargo VARCHAR(50),
    OUT media_salarial DOUBLE
)
BEGIN
	SELECT Mj.JOB_TITLE AS Cargo,
ROUND(AVG(e.SALARY), 2) INTO media_salarial
FROM
    hr.jobs AS j
        INNER JOIN
    hr.employees AS e ON j.JOB_ID = e.JOB_ID
WHERE nome_cargo = JOB_TITLE;
END $$

DELIMITER ;
