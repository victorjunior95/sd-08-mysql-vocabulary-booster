DELIMITER $$
  CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_pessoa VARCHAR(50))
  BEGIN
    SELECT (
      SELECT CONCAT(FIRST_NAME,' ', LAST_NAME)
      FROM hr.employees
      WHERE EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
    ) AS `Nome completo`,
    (
      SELECT DEPARTMENT_NAME
      FROM hr.departments
      WHERE DEPARTMENT_ID = hr.job_history.DEPARTMENT_ID
    ) AS `Departamento`,
    (
      SELECT JOB_TITLE
      FROM hr.jobs
      WHERE JOB_ID = hr.job_history.JOB_ID
    ) AS `Cargo`
    FROM hr.job_history
    WHERE EMPLOYEE_ID = (
      SELECT EMPLOYEE_ID
      FROM hr.employees
      WHERE EMAIL = email_pessoa
    )
    ORDER BY `Cargo`;
  END 
$$ DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
