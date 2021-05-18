USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT 
  COUNT(*) FROM hr.employees
WHERE 
  MONTH(hire_date) = mes
AND 
  YEAR(hire_date) = ano
INTO quantity;
RETURN quantity;
END $$
DELIMITER ;
