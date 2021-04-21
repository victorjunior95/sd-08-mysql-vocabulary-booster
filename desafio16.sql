USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(30))
RETURNS VARCHAR(200) READS SQL DATA
BEGIN
  DECLARE result VARCHAR(200);
  SELECT
    COUNT(j.JOB_ID)
  FROM hr.employees AS e
  INNER JOIN hr.job_history as j 
  ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
  GROUP BY e.EMAIL
  HAVING e.EMAIL = employeeEmail 
  INTO result;
  RETURN result;
END $$
DELIMITER ;
