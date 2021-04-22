DELIMITER $$
  CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_pessoa VARCHAR(50))
  RETURNS INT READS SQL DATA
  BEGIN
    DECLARE quantidade_empregos INT;
    SELECT COUNT(EMPLOYEE_ID) FROM hr.job_history
    WHERE (EMPLOYEE_ID = (
      SELECT EMPLOYEE_ID
      FROM hr.employees
      WHERE EMAIL = email_pessoa
    )) INTO quantidade_empregos;
    RETURN quantidade_empregos;
  END
$$ DELIMITER ;
