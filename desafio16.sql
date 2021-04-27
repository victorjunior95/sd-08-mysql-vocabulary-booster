USE hr;
DELIMITER @!

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (
  employeeEmail VARCHAR(25)
)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE result INT;
  SELECT COUNT(*) FROM hr.job_history AS history
  INNER JOIN hr.employees AS employees
  ON history.employee_id = employees.employee_id
  WHERE EMAIL = employeeEmail
  INTO result;
  RETURN result;
END

@! DELIMITER ;
