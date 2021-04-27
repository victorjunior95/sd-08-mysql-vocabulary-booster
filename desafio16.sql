USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_empregos INT;
  SELECT COUNT(jhistory.DEPARTMENT_ID)
  FROM hr.employees AS employee
  INNER JOIN hr.job_history AS jhistory
  ON jhistory.EMPLOYEE_ID = employee.EMPLOYEE_ID
  WHERE Email = employeeEmail
  INTO quantidade_empregos;
  RETURN quantidade_empregos;

END

$$ DELIMITER;
