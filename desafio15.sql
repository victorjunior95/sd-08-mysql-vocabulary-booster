USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
    SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
    FROM employees AS E
    INNER JOIN jobs AS J 
    ON J.JOB_ID = E.JOB_ID
    WHERE JOB_TITLE = cargo;
END $$

DELIMITER ;
