-- 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico
-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.
-- Use o banco hr como referência
-- Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".
USE hr;
DELIMITER $$ CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(500)) RETURNS INT READS SQL DATA BEGIN
DECLARE Hitorico INT;
SELECT COUNT(*)
FROM hr.employees AS E
  INNER JOIN hr.job_history AS H ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
WHERE E.EMAIL = email INTO Hitorico;
RETURN Hitorico;
END $$ DELIMITER;
SELECT BUSCAR_QUANTIDADE_DE_EMPREGOS_POR_FUNCIONARIO('NKOCHHAR');
