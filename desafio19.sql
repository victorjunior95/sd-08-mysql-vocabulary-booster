DELIMITER $

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month_ INT, year_ INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hiredAmount INT;
SELECT COUNT(EMPLOYEE_ID) FROM hr.employees
WHERE MONTH(HIRE_DATE) = month_ AND YEAR(HIRE_DATE) = year_
INTO hiredAmount;
RETURN hiredAmount;
END $

DELIMITER ;
