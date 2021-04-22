DELIMITER $$
  CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes_data INT, ano_data INT)
  RETURNS INT READS SQL DATA
  BEGIN
    DECLARE quantidade_pessoas INT;
    SELECT COUNT(*) FROM hr.employees
    WHERE hr.employees.HIRE_DATE LIKE CONCAT('%', DATE_FORMAT(CONCAT(ano_data,'-',mes_data,'-','00'), '%Y-%m') , '%') INTO quantidade_pessoas;
    RETURN quantidade_pessoas;
  END
$$ DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
