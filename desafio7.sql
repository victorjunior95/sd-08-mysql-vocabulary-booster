SELECT 
    CONCAT(UPPER(first_name), ' ', UPPER(last_name)) AS 'Nome completo',
    start_date AS 'Data de início',
    SALARY AS 'Salário'
FROM
    hr.job_history H
        INNER JOIN
    hr.employees E ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE
    (MONTH(start_date) = '01'
        OR MONTH(start_date) = '02'
        OR MONTH(start_date) = '03')
ORDER BY `Nome completo` , `Data de início` ASC;
