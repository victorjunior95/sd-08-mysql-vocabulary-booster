DELIMITER @|
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(20))
BEGIN
SELECT 
    CONCAT(E.first_name, ' ', E.last_name) AS 'Nome completo',
    D.department_name AS 'Departamento',
    J.job_title AS 'Cargo'
FROM
    hr.job_history AS JH
        INNER JOIN
    hr.employees AS E ON E.employee_id = JH.employee_id
        INNER JOIN
    hr.jobs AS J ON J.job_id = JH.job_id
        INNER JOIN
    hr.departments AS D ON D.department_id = JH.department_id
WHERE
    E.email = email
ORDER BY `Departamento`, `Cargo`;
END
@| DELIMITER ;

-- CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
