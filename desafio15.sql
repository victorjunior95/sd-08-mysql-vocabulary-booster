DELIMITER &&
CREATE PROCEDURE buscar_media_por_cargo ( IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(Emp.salary), 2) AS `Média salarial`
FROM  hr.employees AS `Emp`
INNER JOIN hr.jobs AS `Jb` ON Emp.job_id = Jb.job_id
WHERE cargo = Jb.job_title;
END && 
DELIMITER ;
