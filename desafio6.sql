SELECT 
    CONCAT(EM.first_name, ' ', EM.last_name) AS 'Nome completo',
    JJ.job_title AS 'Cargo',
    JH.start_date AS 'Data de início do cargo',
    DP.department_name AS 'Departamento'
FROM
  hr.job_history AS JH
        INNER JOIN
    hr.employees AS EM ON EM.employee_id = JH.employee_id
        INNER JOIN
    hr.jobs AS JJ ON JJ.job_id = JH.job_id
        INNER JOIN
    hr.departments AS DP ON DP.department_id = JH.department_id
ORDER BY `Nome completo` DESC , `Cargo`;
