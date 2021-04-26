USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_de_empregos INT;
  SELECT COUNT(*) FROM hr.job_history AS j_history
  INNER JOIN hr.employees AS emp
  ON j_history.EMPLOYEE_ID = emp.EMPLOYEE_ID
  WHERE emp.EMAIL = email
  INTO quantidade_de_empregos;
  RETURN quantidade_de_empregos;
END $$
DELIMITER ;
