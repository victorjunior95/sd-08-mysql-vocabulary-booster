USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(50))
RETURNS DOUBLE READS SQL DATA
BEGIN
DECLARE result INT;
  SELECT
  COUNT(jh.EMPLOYEE_ID)
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
  ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    WHERE EMAIL = employeeEmail
  INTO result;
  RETURN result;
END $$
DELIMITER ;
