USE hr;

DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(hireMonth INT, hireYear INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE HiredEmployees INT;
SELECT 
    COUNT(*)
FROM
    hr.employees
WHERE
    MONTH(HIRE_DATE) = hireMonth
        AND YEAR(HIRE_DATE) = hireYear INTO HiredEmployees;
		RETURN HiredEmployees;
END $$

DELIMITER ;
