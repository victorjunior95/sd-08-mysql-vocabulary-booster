USE hr;

DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;

DELIMITER $

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25))
RETURNS SMALLINT READS SQL DATA
BEGIN
  DECLARE quantity SMALLINT;
  SELECT COUNT(*)
  FROM hr.employees AS e
  INNER JOIN hr.job_history AS jh
  ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  WHERE e.EMAIL = email
  INTO quantity;
  RETURN quantity;
END $

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
