DELIMITER $$
  CREATE PROCEDURE buscar_media_por_cargo(IN jobTitle VARCHAR(20))
    BEGIN
      SELECT ROUND(AVG(E.Salary), 2) AS `Média salarial`
      FROM hr.employees AS E
      INNER JOIN hr.jobs AS J
        ON J.JOB_ID = E.JOB_ID
      WHERE J.JOB_TITLE = jobTitle;
    END
&& DELIMITER;
