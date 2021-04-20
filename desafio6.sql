SELECT 
    CONCAT(B.FIRST_NAME, ' ', B.LAST_NAME) AS 'Nome completo',
    C.JOB_TITLE AS 'Cargo',
    A.START_DATE AS 'Data de início do cargo',
    D.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history A
        JOIN
    hr.employees B ON A.EMPLOYEE_ID = B.EMPLOYEE_ID
        JOIN
    hr.jobs C ON A.JOB_ID = C.JOB_ID
        JOIN
    hr.departments D ON A.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY CONCAT(B.FIRST_NAME, ' ', B.LAST_NAME) DESC , C.JOB_TITLE;
