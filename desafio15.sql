DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
	SELECT ROUND(avg(emp.SALARY), 2) AS `Média salarial` FROM hr.employees AS emp
    INNER JOIN hr.jobs as job
    ON job.JOB_ID = emp.JOB_ID
    WHERE job.JOB_TITLE = cargo;
END $$
DELIMITER ;
