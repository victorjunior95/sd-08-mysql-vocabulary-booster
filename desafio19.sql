USE hr;
DELIMITER $$

DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA

BEGIN
DECLARE quantidadeDePessoas INT;
SELECT count(*) FROM employees
WHERE MONTH(employees.HIRE_DATE) = mes AND YEAR(employees.HIRE_DATE) = ano
INTO quantidadeDePessoas;
RETURN quantidadeDePessoas;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);