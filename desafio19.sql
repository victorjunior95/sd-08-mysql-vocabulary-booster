DELIMITER $$ CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(this_month INT, this_year INT) RETURNS INT READS SQL DATA BEGIN
DECLARE total INT;
SELECT COUNT(*)
FROM hr.employees
WHERE YEAR(HIRE_DATE) = this_year
    AND MONTH(HIRE_DATE) = this_month INTO total;
RETURN total;
END $$ DELIMITER;
