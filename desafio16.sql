USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR (50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_empregos INT;
SELECT 
    COUNT(tb_hist.EMPLOYEE_ID)
FROM
    hr.employees AS tb_empl
        INNER JOIN
    hr.job_history AS tb_hist ON tb_empl.EMPLOYEE_ID = tb_hist.EMPLOYEE_ID
WHERE
    tb_empl.EMAIL = email INTO total_empregos;
  RETURN total_empregos;
END $$

DELIMITER ;
