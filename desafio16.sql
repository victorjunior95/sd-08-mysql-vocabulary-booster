DELIMITER @|
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
-- DETERMINISTIC: sempre produz o mesmo resultado para os mesmos parâmetros de entrada
-- NON DETERMINISTIC: caso contrário ao anterior
-- READS SQL DATA: a função irá APENAS ler dados
BEGIN
-- instrução da stored function
DECLARE quantidade_empregos INT;
SELECT 
    COUNT(*)
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS JH ON JH.employee_id = E.employee_id
WHERE
    E.email = email INTO quantidade_empregos;
RETURN quantidade_empregos;
END
@| DELIMITER ;

SELECT BUSCAR_QUANTIDADE_DE_EMPREGOS_POR_FUNCIONARIO('NKOCHHAR');
