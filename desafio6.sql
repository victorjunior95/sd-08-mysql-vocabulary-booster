SELECT 
    CONCAT(tb_emply.FIRST_NAME,
            ' ',
            tb_emply.LAST_NAME) AS 'Nome completo',
    tb_job.JOB_TITLE AS 'Cargo',
    tb_hist.START_DATE AS 'Data de início do cargo',
    tb_dep.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS tb_emply
        INNER JOIN
    hr.job_history AS tb_hist ON tb_emply.EMPLOYEE_ID = tb_hist.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS tb_job ON tb_hist.JOB_ID = tb_job.JOB_ID
        INNER JOIN
    hr.departments AS tb_dep ON tb_hist.DEPARTMENT_ID = tb_dep.DEPARTMENT_ID
ORDER BY CONCAT(tb_emply.FIRST_NAME,
        ' ',
        tb_emply.LAST_NAME) DESC , tb_job.JOB_TITLE ASC;
