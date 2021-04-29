USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE funcionarios_contratados INT;
  SELECT COUNT(HIRE_DATE) FROM employees
  WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
  INTO funcionarios_contratados;
  RETURN funcionarios_contratados;
END $$
DELIMITER ;
