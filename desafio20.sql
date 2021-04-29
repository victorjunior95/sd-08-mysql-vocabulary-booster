USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employeeEmail VARCHAR(50))

BEGIN
SELECT CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS 'Nome completo',
department.DEPARTMENT_NAME AS 'Departamento',
job.JOB_TITLE AS 'Cargo'
FROM hr.job_history jhistory
INNER JOIN hr.employees employee
ON jhistory.EMPLOYEE_ID = employee.EMPLOYEE_ID
INNER JOIN hr.departments department
ON jhistory.DEPARTMENT_ID = department.DEPARTMENT_ID
INNER JOIN hr.jobs job
ON jhistory.JOB_ID = job.JOB_ID
WHERE employee.EMAIL = employeeEmail
ORDER BY department.DEPARTMENT_NAME, job.JOB_TITLE;
END

$$ DELIMITER ;
