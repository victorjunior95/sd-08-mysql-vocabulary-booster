USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(E.SALARY), 2) AS `Média salarial`
FROM hr.jobs AS J
INNER JOIN hr.employees AS E
ON J.JOB_ID = E.JOB_ID
WHERE JOB_TITLE = cargo
    GROUP BY J.JOB_TITLE;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
