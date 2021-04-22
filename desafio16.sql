DELIMITER $$

  CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailDoFuncionario VARCHAR(100))
  RETURNS INT READS SQL DATA
    BEGIN
      DECLARE quantity INT;
      SELECT COUNT(*)
      FROM hr.employees AS E
      INNER JOIN hr.job_history AS JH
        ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
      WHERE E.EMAIL = emailDoFuncionario
      INTO quantity;
      RETURN quantity;

    END $$

DELIMITER;
