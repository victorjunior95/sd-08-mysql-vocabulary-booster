USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario (IN  VARCHAR(50))
BEGIN
  CONCAT()
  FROM hr.employees AS employee
  INNER JOIN hr.jobs AS job
  ON employee.JOB_ID = job.JOB_ID
  WHERE job.JOB_TITLE = jobTitle
  GROUP BY job.JOB_TITLE;
END
$$ DELIMITER ;
