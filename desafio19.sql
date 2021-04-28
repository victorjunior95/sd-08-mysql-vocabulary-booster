DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
  SELECT
  CONCAT(hre.FIRST_NAME, ' ', hre.LAST_NAME) AS "Nome completo",
  (
    SELECT dep.DEPARTMENT_NAME FROM hr.departments AS dep
    WHERE dep.DEPARTMENT_ID = hrjh.DEPARTMENT_ID
  ) AS Departamento,
  (SELECT hrj.JOB_TITLE FROM hr.jobs AS hrj WHERE hrj.JOB_ID = hrjh.JOB_ID) AS Cargo
  FROM hr.employees AS hre
  INNER JOIN hr.job_history AS hrjh
  ON hrjh.EMPLOYEE_ID = hre.EMPLOYEE_ID
  WHERE hre.EMAIL = email
  ORDER BY Departamento, Cargo;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
