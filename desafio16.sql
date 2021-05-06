USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(parameter VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE result INT;
  
  SELECT COUNT(h.JOB_ID) 
    FROM hr.job_history AS h
    INNER JOIN hr.employees AS e
    ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
    WHERE e.EMAIL = parameter
    INTO result;
    
  RETURN result;
END $$

DELIMITER ;
