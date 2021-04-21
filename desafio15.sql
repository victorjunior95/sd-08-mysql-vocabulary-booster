DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
  IN cargoABuscar VARCHAR(100))
BEGIN

  SELECT
    ROUND(AVG(E.SALARY), 2) AS `Média salarial`
  FROM hr.jobs AS J
  INNER JOIN hr.employees AS E
    ON J.JOB_ID = E.JOB_ID
  WHERE J.JOB_TITLE = cargoABuscar;
END $$

DELIMITER ;
