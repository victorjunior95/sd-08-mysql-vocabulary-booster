USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE all_jobs INT;
    SELECT COUNT(*)
    FROM hr.job_history AS h
    WHERE EXISTS (
      SELECT * FROM hr.employees AS e
      WHERE e.employee_id = h.employee_id AND e.email = 'NKOCHHAR'
    )
    INTO all_jobs;
    RETURN all_jobs;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
