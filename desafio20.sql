DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
Department_Name AS 'Departamento',
Job_title AS 'Cargo'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON jh.Employee_ID = e.Employee_ID
INNER JOIN hr.departments AS d
ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
INNER JOIN hr.jobs AS j
ON j.JOB_ID = jh.JOB_ID
WHERE e.Email = email
ORDER BY Department_Name;
END $$
DELIMITER ;
