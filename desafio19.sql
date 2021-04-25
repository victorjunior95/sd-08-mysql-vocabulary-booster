USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(*)
FROM employees
WHERE MONTH(hire_date) = mes
AND YEAR(hire_date) = ano
INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;
