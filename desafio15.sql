USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(40))
BEGIN
    SELECT ROUND(AVG(e.SALARY),2) AS "Média salarial"
    FROM employees AS e
    INNER JOIN jobs AS j
    ON e.job_id = j.job_id
    WHERE j.job_title = cargo;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
