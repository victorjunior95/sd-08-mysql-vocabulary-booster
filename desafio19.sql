USE hr;

DELIMITER $
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(inMonth SMALLINT, inYear INT)
RETURNS SMALLINT READS SQL DATA
BEGIN
  DECLARE howMany SMALLINT;
  SELECT COUNT(*)
  FROM hr.employees AS e
  WHERE YEAR(e.HIRE_DATE) = inYear AND
  MONTH(e.HIRE_DATE) = inMonth
  INTO howMany;
  RETURN howMany;
END $

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
