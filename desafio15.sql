USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN job_name varchar(50))
BEGIN
SELECT
ROUND(AVG(e.SALARY), 2) AS `Média salarial` 
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = job_name;
END $$
DELIMITER ;

SELECT
ROUND(AVG(e.SALARY), 2) AS `Média salarial` 
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = 'Programmer';
