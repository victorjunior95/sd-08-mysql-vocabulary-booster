-- 19 - Crie uma função chamada exibir_quantidade_pessoas_contratadas_por_mes_e_ano no banco de dados hr que,
-- dados o mês e ano como parâmetros nessa ordem, retorna a quantidade de pessoas funcionárias que foram contratadas nesse mês e ano
-- Use o banco hr como referência
-- Confirme que sua função retorna o valor 14 ao ser chamada passando os números 6 e 1987 para mês e ano, respectivamente.

-- Reference: https://stackoverflow.com/questions/11165104/adding-a-leading-zero-to-some-values-in-column-in-mysql/11165118

USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE pessoas_empregadas INT;
SELECT COUNT(*) FROM hr.employees WHERE DATE_FORMAT(HIRE_DATE, "%m/%Y") = CONCAT(LPAD(mes, 2, 0), "/", ano)
INTO pessoas_empregadas;
RETURN pessoas_empregadas;
END
$$ DELIMITER ;
