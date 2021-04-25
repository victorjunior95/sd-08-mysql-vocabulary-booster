USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mês SMALLINT, ano INT)
RETURNS SMALLINT READS SQL DATA
BEGIN
DECLARE quantidade SMALLINT;
SELECT COUNT(*)
FROM hr.employees
WHERE YEAR(HIRE_DATE) = ano AND MONTH(HIRE_DATE) = mês
INTO quantidade;
RETURN quantidade;
END $$
DELIMITER ;
