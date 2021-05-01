USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN EMAIL VARCHAR(25))
BEGIN
    SELECT
    CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
    departaments.DEPARTMENT_NAME AS 'Departamento',
    jobs.JOB_TITLE AS 'Cargo'
    FROM hr.job_history AS job_history
INNER JOIN hr.employees AS employees
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
INNER JOIN hr.departments AS departaments
ON departaments.DEPARTMENT_ID = job_history.DEPARTMENT_ID
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = job_history.JOB_ID
WHERE employees.EMAIL = EMAIL
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
