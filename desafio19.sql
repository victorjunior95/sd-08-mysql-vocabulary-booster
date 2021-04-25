DELIMITER @|
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes VARCHAR(2), ano VARCHAR(4))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_funcionarios_contratados INT;
SELECT 
    COUNT(hire_date)
FROM
    hr.employees
WHERE
    (MONTH(hire_date) = mes AND YEAR(hire_date) = ano) INTO quantidade_funcionarios_contratados;
RETURN quantidade_funcionarios_contratados;
END
@| DELIMITER ;

-- SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
