DROP PROCEDURE buscar_media_por_cargo;

USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN jobTitle VARCHAR(20))
BEGIN
SELECT ROUND(AVG(salary), 2) AS `Média salarial` FROM hr.employees
WHERE job_id = (SELECT job_id FROM hr.jobs WHERE job_title = jobTitle)
GROUP BY job_id;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
