SELECT 
    UCASE(CONCAT(EM.first_name, ' ', EM.last_name)) AS 'Nome completo',
    JH.start_date AS 'Data de início',
    EM.salary AS 'Salário'
FROM
    hr.employees AS EM
        INNER JOIN
    hr.job_history AS JH ON JH.employee_id = EM.employee_id
WHERE
    MONTH(JH.start_date) = 01
        OR MONTH(JH.start_date) = 02
        OR MONTH(JH.start_date) = 03
ORDER BY `Nome completo` , `Data de início`;
