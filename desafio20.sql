USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario (IN employeeEmail VARCHAR(50))
BEGIN
  CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS `Nome completo`,
  dep.DEPARTMENT_NAME AS "Departamento",
  job.JOB_TITLE AS "Cargo"
  FROM hr.employees AS employee
  INNER JOIN hr.jobs AS jhistory
  ON employee.EMPLOYEE_ID = jhistory.EMPLOYEE_ID
  INNER JOIN hr.jobs AS job
  ON job.JOB_ID = jhistory.JOB_ID
  INNER JOIN hr.departments AS dep
  ON dep.DEPARTMENT_ID = jhistory.DEPARTMENT_ID
  WHERE EMAIL = employeeEmail
  ORDER BY 3, 2  
END
$$ DELIMITER ;
