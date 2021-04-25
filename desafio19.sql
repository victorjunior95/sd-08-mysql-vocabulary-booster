USE hr;

DELIMITER $$ CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT) RETURNS INT READS SQL DATA BEGIN	DECLARE quantidade INT;

SELECT COUNT(e1.HIRE_DATE) FROM hr.employees AS e1 WHERE YEAR(e1.HIRE_DATE) = ano AND MONTH(e1.HIRE_DATE) = mes INTO quantidade;

RETURN quantidade;

END $$ DELIMITER ;
