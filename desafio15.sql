DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job_title VARCHAR(100))
BEGIN
  SELECT
    ROUND(AVG(e.SALARY), 2) AS `Média salarial`
  FROM hr.jobs j
  INNER JOIN hr.employees e
  ON e.JOB_ID = j.JOB_ID
  WHERE j.JOB_TITLE = job_title;
END $$
DELIMITER ;
