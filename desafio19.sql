DELIMITER $$

  CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)

  RETURNS INT READS SQL DATA

    BEGIN

      DECLARE amount INT;
      SELECT COUNT(*) FROM hr.employees AS E
      WHERE MONTH(E.HIRE_DATE) = mes AND YEAR(E.HIRE_DATE)      
      INTO amount;
      RETURN amount;

    END $$

DELIMITER ;
