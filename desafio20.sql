USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
d.department_name AS Departamento,
j.job_title as Cargo
FROM job_history jh
INNER JOIN employees e ON jh.employee_id = e.employee_id
INNER JOIN departments d ON jh.department_id = d.department_id
INNER JOIN jobs j ON jh.job_id = j.job_id
WHERE e.email = email
ORDER BY Departamento, Cargo;
END $$

DELIMITER ;