USE hr;

DELIMITER $
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(25))
BEGIN
  SELECT
    (
      SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)
      FROM hr.employees AS e
      WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    )
    AS `Nome completo`,
    (
      SELECT d.DEPARTMENT_NAME
      FROM hr.departments AS d
      WHERE d.DEPARTMENT_ID = jh.DEPARTMENT_ID
    ) AS `Departamento`,
    (
      SELECT j.JOB_TITLE
      FROM hr.jobs AS j
      WHERE j.JOB_ID = jh.JOB_ID
    ) AS `Cargo`
  FROM hr.job_history AS jh
  WHERE EXISTS (
    SELECT * FROM hr.employees AS e
    WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    AND e.EMAIL = email
  )
  ORDER BY `Departamento`, `Cargo`;
END $

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
