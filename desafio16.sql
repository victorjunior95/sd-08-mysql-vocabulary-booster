USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailPesquisar VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidadeEmpregos INT;
  SELECT COUNT(jh.JOB_ID) FROM hr.job_history AS jh
  INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  WHERE e.EMAIL = emailPesquisar INTO quantidadeEmpregos;
  RETURN quantidadeEmpregos;
END $$
DELIMITER ;

 SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
 