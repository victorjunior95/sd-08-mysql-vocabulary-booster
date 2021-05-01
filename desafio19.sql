USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(HIRE_MONTH INT, HIRE_YEAR INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE QTD_HIRED INT;
    SELECT
        COUNT(*) AS `Número de pessoas contratadas`
    FROM hr.employees AS employees
    WHERE MONTH(employees.HIRE_DATE) = HIRE_MONTH AND YEAR(employees.HIRE_DATE) = HIRE_YEAR
    INTO QTD_HIRED;
    RETURN QTD_HIRED;
END $$

DELIMITER ;
