USE hr;
DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50), OUT average_salary DECIMAL(8, 2))
BEGIN
  SELECT
    ROUND(AVG(SALARY), 2) AS `Média salarial`
  FROM employees
  JOIN jobs
  ON jobs.JOB_ID = employees.JOB_ID
  WHERE JOB_TITLE = job
  INTO average_salary;
END $$;

DELIMITER ;
