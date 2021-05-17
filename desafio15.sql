USE hr;
DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN
  SELECT
    ROUND(AVG(SALARY), 2) AS `Média salarial`
  FROM employees
  JOIN jobs
  ON jobs.JOB_ID = employees.JOB_ID
  WHERE JOB_TITLE = job;
END $$;

DELIMITER ;
