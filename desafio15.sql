USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY),2) AS 'Média salarial'
FROM employees
WHERE JOB_ID IN (
SELECT JOB_ID FROM hr.jobs
where JOB_TITLE = cargo
);

END $$

DELIMITER ;
