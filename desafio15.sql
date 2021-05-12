USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
  SELECT ROUND(AVG(SALARY), 2) AS "Média salarial"
  FROM hr.employees AS employees
  INNER JOIN hr.jobs AS jobs
  ON employees.job_id = jobs.job_id
  WHERE cargo = jobs.job_title;
END $$ 
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
