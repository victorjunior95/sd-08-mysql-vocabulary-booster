USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_funcionario VARCHAR(200))
RETURNS VARCHAR(200) READS SQL DATA
BEGIN
    DECLARE quantidadeDeEmpregos INT;
    SELECT COUNT(JH.EMPLOYEE_ID)
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE E.EMAIL = email_funcionario INTO quantidadeDeEmpregos;
    RETURN quantidadeDeEmpregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
