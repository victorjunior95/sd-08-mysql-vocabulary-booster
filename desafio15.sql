DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(Employees.salary), 2) AS 'Média salarial'
FROM hr.employees AS Employees
INNER JOIN hr.jobs AS Jobs ON Employees.job_id = Jobs.job_id AND Jobs.job_title = cargo
GROUP BY Employees.job_id;
END $$

DELIMITER ;
