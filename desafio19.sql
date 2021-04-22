DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (`mês` INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidadeContratada INT;
SELECT COUNT(*) FROM hr.employees
WHERE YEAR(hire_date) = ano AND MONTH(hire_date) = `mês`
INTO quantidadeContratada;
RETURN quantidadeContratada;
END $$

DELIMITER ;
