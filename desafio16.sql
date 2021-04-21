DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_empregos INT;
  SELECT
    COUNT(jh.DEPARTMENT_ID)
  FROM hr.employees e
  INNER JOIN hr.job_history jh
  ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE e.email = email INTO total_empregos;
  RETURN total_empregos;
END $$
DELIMITER ;
