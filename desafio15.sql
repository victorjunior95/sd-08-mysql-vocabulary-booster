USE hr;

DELIMITER $$ CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(35)) BEGIN SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial' FROM hr.employees AS e GROUP BY e.JOB_ID HAVING e.JOB_ID = (SELECT JOB_ID FROM hr.jobs AS j WHERE JOB_TITLE = cargo);

END $$ DELIMITER ;
