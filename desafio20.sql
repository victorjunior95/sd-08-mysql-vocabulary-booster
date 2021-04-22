DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario (IN email VARCHAR(50))
BEGIN 
SELECT CONCAT(Employees.first_name, ' ', Employees.last_name) AS 'Nome completo',
Departments.department_name AS Departamento,
Jobs.job_title AS Cargo FROM hr.employees AS Employees
INNER JOIN hr.job_history AS Job_History ON Employees.employee_id = Job_History.employee_id
INNER JOIN hr.departments AS Departments ON Job_History.department_id = Departments.department_id
INNER JOIN hr.jobs AS Jobs ON Job_History.job_id = Jobs.job_id 
WHERE Employees.email = 'NKOCHHAR'
ORDER BY `Cargo`;
END $$

DELIMITER ;
