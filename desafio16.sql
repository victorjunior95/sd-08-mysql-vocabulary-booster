USE hr;
DELIMITER $$
  CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
    RETURNS INT READS SQL DATA
    BEGIN
      DECLARE quantidade_empregos INT;
      SELECT 
      COUNT(e.EMPLOYEE_ID)
      FROM employees AS e
      RIGHT JOIN job_history AS jh
      ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
      GROUP BY e.EMAIL
      HAVING e.EMAIL = email
      INTO quantidade_empregos;
      RETURN quantidade_empregos;
    END
$$ DELIMITER ;
