DROP FUNCTION buscar_quantidade_de_empregos_por_funcionario;

USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(e_mail VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE empregos INT;
SELECT
(COUNT(*) - 1) AS Empregos
FROM (SELECT employee_id FROM hr.employees UNION ALL
SELECT employee_id FROM hr.job_history) AS tableUnion
WHERE employee_id = (SELECT employee_id FROM hr.employees WHERE email = e_mail)
GROUP BY employee_id INTO empregos;
RETURN empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
SELECT buscar_quantidade_de_empregos_por_funcionario('SKING');
