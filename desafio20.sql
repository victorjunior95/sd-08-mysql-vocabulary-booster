USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employeeEmail VARCHAR(50))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo', d.DEPARTMENT_NAME AS 'Departamento', j.JOB_TITLE AS 'Cargo'
FROM job_history jh
INNER JOIN departments d
ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
INNER JOIN employees e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN jobs j
ON j.JOB_ID = jh.JOB_ID
WHERE e.EMAIL = employeeEmail
ORDER BY `Cargo`;
END $$

DELIMITER ; 
