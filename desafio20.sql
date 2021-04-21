DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN e_mail VARCHAR(20))
BEGIN
SELECT
CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
j.job_title AS Cargo,
d.department_name AS Departamento
FROM hr.job_history AS h
INNER JOIN hr.departments AS d
ON h.department_id = d.department_id
INNER JOIN hr.employees AS e
ON h.employee_id = e.employee_id
INNER JOIN hr.jobs AS j
ON h.job_id = j.job_id
WHERE h.employee_id = (SELECT employee_id FROM hr.employees WHERE email = e_mail)
ORDER BY 3, 2;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
