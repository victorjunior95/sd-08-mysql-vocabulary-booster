DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (dia INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE searchResult INT;
SELECT
COUNT(e.EMPLOYEE_ID)
FROM hr.employees AS e
WHERE MONTH(e.HIRE_DATE) = dia AND YEAR(e.HIRE_DATE) = ano INTO searchResult; 
RETURN searchResult;
END $$
DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);

-- SELECT
-- COUNT(e.EMPLOYEE_ID)
-- FROM hr.employees AS e
-- WHERE MONTH(e.HIRE_DATE) = 6 AND YEAR(e.HIRE_DATE) = 1987;
