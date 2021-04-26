USE hr;
DELIMITER @!

CREATE PROCEDURE buscar_media_por_cargo(IN jobTitle VARCHAR(35)) BEGIN SELECT ROUND(AVG(E.SALARY), 2) AS 'Média salarial' FROM hr.employees AS employees INNER JOIN hr.jobs AS jobs ON employees.job_id = jobs.job_id WHERE jobs.job_title = jobTitle GROUP BY jobs.job_title; END

@! DELIMITER ;

-- USE hr;
-- DELIMITER @!

-- CREATE PROCEDURE buscar_media_por_cargo(IN jobTitle VARCHAR(35))
-- BEGIN
--   SELECT ROUND(AVG(E.SALARY), 2) AS 'Média salarial'
--   FROM hr.employees AS employees
--   INNER JOIN hr.jobs AS jobs
--   ON employees.job_id = jobs.job_id
--   WHERE jobs.job_title = jobTitle
--   GROUP BY jobs.job_title;
-- END

-- @! DELIMITER ;
