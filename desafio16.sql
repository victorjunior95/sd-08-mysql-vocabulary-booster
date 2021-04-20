USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (
  employeeEmail VARCHAR(25)
)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE result INT;
  SELECT COUNT(*) FROM hr.job_history AS H
  INNER JOIN hr.employees AS E
  ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
  WHERE EMAIL = employeeEmail
  INTO result;
  RETURN result;
END

$$ DELIMITER ;
