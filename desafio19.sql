USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes VARCHAR(5), ano VARCHAR(5)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_de_contratados INT;
  SELECT COUNT(HIRE_DATE)
  FROM hr.employees
  WHERE MONTH(HIRE_DATE) = mes
  AND YEAR(HIRE_DATE) = ano
  INTO quantidade_de_contratados;
  RETURN quantidade_de_contratados;

END

$$ DELIMITER;
