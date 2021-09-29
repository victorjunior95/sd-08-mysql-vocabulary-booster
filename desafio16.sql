-- 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que,
-- ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em
-- seu histórico
-- 	Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email
-- 	é "NKOCHHAR".
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA -- tipo_de_dado tipo_de_retorno
BEGIN
DECLARE quantidade_de_empregos_presentes_no_histórico INT;
SELECT COUNT(*) FROM hr.employees AS e
INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email INTO quantidade_de_empregos_presentes_no_histórico;
RETURN quantidade_de_empregos_presentes_no_histórico;
END
$$ DELIMITER ;
