DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE dateHistory INT;
SELECT COUNT(HIRE_DATE)
FROM hr.employees
WHERE MONTH(HIRE_DATE) = mes AND year(HIRE_DATE) = ano
INTO dateHistory;
RETURN dateHistory;
END $$
DELIMITER ;
