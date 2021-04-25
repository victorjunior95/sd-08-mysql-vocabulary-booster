USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial' FROM hr.employees AS e
  WHERE EXISTS (
    SELECT j.job_title FROM hr.jobs AS j
    WHERE j.job_id = e.job_id AND cargo = j.job_title
  );
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
