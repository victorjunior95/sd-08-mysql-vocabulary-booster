USE hr;
DELIMITER $$

DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (
  hireMonth INT, hireYear INT
)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE result INT;
  SELECT COUNT(*) FROM hr.employees
  WHERE HIRE_DATE LIKE CONCAT(
    hireYear, '-', RIGHT(CONCAT('0', hireMonth), 2), '%'
  )
  INTO result;
  RETURN result;
END

$$ DELIMITER ;
