DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))

BEGIN
SELECT CAST(AVG(employee.salary) AS DECIMAL(10,2)) AS 'Média salarial'
FROM hr.employees employee
INNER JOIN hr.jobs job
ON employee.JOB_ID = job.JOB_ID
AND job.JOB_TITLE = cargo
GROUP BY employee.JOB_ID;
END $$

DELIMITER ;
