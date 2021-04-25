SELECT 
    CONCAT(E.first_name, ' ', E.last_name) AS 'Nome completo',
    J.job_title AS 'Cargo',
    JH.start_date AS 'Data de início do cargo',
    D.department_name AS 'Departamento'
FROM
    hr.employees E
        INNER JOIN
    hr.jobs J ON E.job_id = J.job_id
        INNER JOIN
    hr.job_history JH ON E.employee_id = JH.employee_id
        INNER JOIN
    hr.departments D ON E.department_id = D.department_id
ORDER BY `Nome completo` DESC , `Cargo`;
