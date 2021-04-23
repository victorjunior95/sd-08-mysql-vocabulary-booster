USE hr;

DELIMITER $

CREATE PROCEDURE buscar_media_por_cargo(IN JobName VARCHAR(35))
BEGIN 
  SELECT ROUND(AVG(e.SALARY), 2) AS `Média salarial`
  FROM hr.employees AS e
  WHERE EXISTS (
    SELECT * FROM hr.jobs AS j
    WHERE j.JOB_ID = e.JOB_ID AND j.JOB_TITLE = JobName
  );
END $

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
