USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY),2) AS `Média salarial`
FROM hr.employees AS e
INNER jOIN hr.jobs AS j
ON e.job_id = j.job_id AND j.job_title = cargo
GROUP BY j.JOB_TITLE;
END$$ 
DELIMITER;

CALL buscar_media_por_cargo('Programmer');
