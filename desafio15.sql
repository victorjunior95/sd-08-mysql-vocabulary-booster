USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo( IN nome_cargo VARCHAR(20))
BEGIN
 SELECT ROUND(AVG(tb_empl.SALARY), 2) AS 'Média salarial'
 FROM hr.employees AS tb_empl
 INNER JOIN hr.jobs AS tb_jb
 ON tb_empl.JOB_ID = tb_jb.JOB_ID WHERE tb_jb.JOB_TITLE = nome_cargo;
END $$

DELIMITER ;
