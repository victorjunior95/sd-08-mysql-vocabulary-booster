SELECT 
    CONCAT(employ.FIRST_NAME, ' ', employ.LAST_NAME) AS 'Nome completo',
    job.JOB_TITLE AS 'Cargo',
    hty.START_DATE AS 'Data de início do cargo',
    dep.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS employ
        INNER JOIN
    hr.jobs AS job ON employ.JOB_ID = job.JOB_ID
        INNER JOIN
    hr.job_history AS hty ON job.JOB_ID = hty.JOB_ID
        INNER JOIN
    DEPARTMENT_NAME AS dep
WHERE
    dep.DEPARTMENT_ID = hty.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo`;	
