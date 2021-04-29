DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN

DECLARE Quantidade INT;
SELECT COUNT(HIRE_DATE) INTO Quantidade
FROM hr.employees
WHERE mes = MONTH(HIRE_DATE) AND ano = YEAR(HIRE_DATE);
RETURN Quantidade;
END $$

DELIMITER ;
