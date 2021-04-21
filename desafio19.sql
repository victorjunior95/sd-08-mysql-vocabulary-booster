DROP FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_contratados INT;
SELECT COUNT(*)
FROM hr.employees
WHERE hire_date
BETWEEN CONCAT(ano, '/', mes, '/', 01) AND
CASE
WHEN mes IN (2) THEN CONCAT(ano, '/', mes, '/', 28)
WHEN mes IN (1, 3, 5, 7, 8, 10, 12) THEN CONCAT(ano, '/', mes, '/', 31)
ELSE CONCAT(ano, '/', mes, '/', 30)
END 
INTO quantidade_contratados;
RETURN quantidade_contratados;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(7, 1987);
