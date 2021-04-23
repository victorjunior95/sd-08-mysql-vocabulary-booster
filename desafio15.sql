USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN jobName VARCHAR(100))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS `Média salarial`
  FROM hr.jobs AS j
  INNER JOIN hr.employees AS e
  ON j.JOB_ID = e.JOB_ID AND j.JOB_TITLE = jobName
  GROUP BY j.JOB_TITLE;
END $$

DELIMITER ;
