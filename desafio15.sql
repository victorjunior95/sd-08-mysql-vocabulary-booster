USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(35))
BEGIN
  SELECT ROUND(AVG(SALARY), 2) FROM hr.employees AS employees
  INNER JOIN hr.jobs AS jobs
    ON employees.JOB_ID = jobs.JOB_ID
  WHERE jobs.JOB_TITLE = cargo;
END $$
DELIMITER ;
