DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(E.SALARY), 2) 'Média salarial' FROM hr.employees E
    INNER JOIN hr.jobs J ON E.JOB_ID = J.JOB_ID AND J.JOB_TITLE = cargo
    GROUP BY E.JOB_ID;
END $$
DELIMITER ;
