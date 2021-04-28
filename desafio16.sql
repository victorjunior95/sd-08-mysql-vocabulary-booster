DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(300))
RETURNS TINYINT READS SQL DATA
BEGIN
  DECLARE jobs_num TINYINT;
  SELECT COUNT(hrjh.EMPLOYEE_ID) AS total_empregos
  FROM hr.employees AS hre
  INNER JOIN hr.job_history AS hrjh
  ON hrjh.EMPLOYEE_ID = hre.EMPLOYEE_ID
  WHERE hre.EMAIL = email
  INTO jobs_num;
  RETURN jobs_num;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR") AS total_empregos;
