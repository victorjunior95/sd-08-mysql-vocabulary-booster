SELECT 
    CONCAT(UCASE(FIRST_NAME), ' ', UCASE(LAST_NAME)) AS `Nome completo`,
    jh.START_DATE AS `Data de início`,
    SALARY AS Salário
FROM
    hr.employees e
        INNER JOIN
    hr.job_history AS jh ON e.employee_id = jh.employee_id
WHERE
    MONTH(jh.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo` , `Data de início`;
