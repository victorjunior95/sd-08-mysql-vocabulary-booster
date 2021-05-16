USE hr;
DELIMITER $$;

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE number_of_jobs INT;
  SELECT
    COUNT(job_history.JOB_ID)
  FROM employees
  JOIN job_history
  ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
  WHERE EMAIL = email
  INTO number_of_jobs;
  RETURN number_of_jobs;
END $$;

DELIMITER ;
