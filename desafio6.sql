SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
    (SELECT 
            j.JOB_TITLE
        FROM
            hr.jobs j
        WHERE
            j.JOB_ID = jh.JOB_ID) AS Cargo,
    jh.START_DATE AS `Data de início do cargo`,
    (SELECT 
            d.DEPARTMENT_NAME
        FROM
            hr.departments d
        WHERE
            d.DEPARTMENT_ID = jh.DEPARTMENT_ID) AS Departamento
FROM
    hr.employees e
        INNER JOIN
    hr.job_history jh 
ON e.employee_id = jh.employee_id
ORDER BY `Nome completo` DESC , Cargo;
