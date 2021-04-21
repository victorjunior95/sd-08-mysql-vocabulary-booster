DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
	SELECT ROUND(AVG(e.Salary),2) FROM hr.employees AS e
    INNER JOIN hr.jobs AS j
    ON e.JOB_ID = j.JOB_ID
    WHERE j.JOB_TITLE = cargo;
END $$
DELIMITER ;
