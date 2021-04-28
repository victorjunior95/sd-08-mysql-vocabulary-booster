DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes TINYINT, ano SMALLINT)
RETURNS SMALLINT READS SQL DATA
BEGIN
  DECLARE total SMALLINT;
  SELECT COUNT(*) FROM hr.employees
  WHERE YEAR(HIRE_DATE) = ano AND MONTH(HIRE_DATE) = mes
  INTO total;
  RETURN total;
END $$
DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
