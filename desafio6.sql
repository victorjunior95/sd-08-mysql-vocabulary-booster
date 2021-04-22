SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    JOB_TITLE AS 'Cargo',
    START_DATE AS 'Data de início do cargo',
    DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history  H
        INNER JOIN
    hr.jobs J ON H.JOB_ID = J.JOB_ID
        INNER JOIN
    hr.departments D ON H.DEPARTMENT_ID = D.DEPARTMENT_ID
        INNER JOIN
    hr.employees E ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome completo` DESC , Cargo ASC;
