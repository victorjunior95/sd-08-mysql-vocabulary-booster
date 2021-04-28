DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(30))
BEGIN
  SELECT ROUND(AVG(hre.SALARY), 2) AS 'Média salarial'
  FROM hr.employees AS hre
  INNER JOIN hr.jobs AS hrj ON hrj.JOB_ID = hre.JOB_ID
  WHERE hrj.JOB_TITLE = cargo
  GROUP BY hrj.JOB_TITLE;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
