-- 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email
-- de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico
-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario que, ao receber o email de uma pessoa funcionária,
-- retorne a quantidade de empregos presentes em seu histórico.
-- Use o banco hr como referência
-- Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".

USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT COUNT(*) AS total_empregos
FROM hr.job_history AS hrjobhist
INNER JOIN hr.employees AS hremp
ON hremp.EMPLOYEE_ID = hrjobhist.EMPLOYEE_ID
WHERE hremp.EMAIL = email
INTO total_empregos;
RETURN total_empregos;
END
$$ DELIMITER ;
