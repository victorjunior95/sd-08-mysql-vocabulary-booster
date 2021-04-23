USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo (IN jobTitle VARCHAR(50))
BEGIN
  SELECT ROUND(AVG(employee.SALARY), 2) AS `Média salarial`
  FROM hr.employees AS employee
  INNER JOIN hr.jobs AS job
  ON employee.JOB_ID = job.JOB_ID
  WHERE job.JOB_TITLE = jobTitle
  GROUP BY job.JOB_TITLE;
END
$$ DELIMITER ;
