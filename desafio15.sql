USE hr;

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(
IN nome_cargo VARCHAR(50)
)
BEGIN
SET @JobID = (SELECT `JOB_ID` FROM `jobs` WHERE `JOB_TITLE` LIKE CONCAT('%', nome_cargo, '%'));
SELECT ROUND(AVG(`SALARY`), 2) AS `Média salarial`
FROM `employees` WHERE `JOB_ID` = @JobID;
END $$
DELIMITER ;
