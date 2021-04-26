DELIMITER kabô
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT 
    ROUND(SUM(e.SALARY) / COUNT(e.JOB_ID), 2) AS 'Média salarial'

FROM
    employees AS e
        INNER JOIN
    jobs AS j ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE  = cargo ;
END
kabô
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
