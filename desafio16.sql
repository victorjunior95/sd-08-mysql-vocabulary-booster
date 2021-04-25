USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_de_empregos INT;
  SELECT COUNT(H.EMPLOYEE_ID)
  FROM hr.job_history AS H
  INNER JOIN employees AS E
  ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
  WHERE E.EMAIL = email
  GROUP BY H.EMPLOYEE_ID
  INTO quantidade_de_empregos;
  RETURN quantidade_de_empregos;
END $$

DELIMITER ;
