DELIMITER &&
  CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
    RETURNS INT READS SQL DATA
    BEGIN
      DECLARE quantidade_empregos INT;
      SELECT COUNT(*)
      FROM hr.employees AS E
      INNER JOIN hr.job_history AS JH
        ON JH.employee_id = E.employee_id
      WHERE E.Email = email INTO quantidade_empregos;
      RETURN quantidade_empregos;
    END
&& DELIMITER;
