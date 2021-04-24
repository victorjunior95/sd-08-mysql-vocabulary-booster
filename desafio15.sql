USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo varchar(20))
BEGIN
SELECT ROUND(AVG(e.SALARY),2) as `Média SalariaL` 
from hr.employees as e
INNER JOIN hr.jobs as j ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = cargo;
END $$
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
