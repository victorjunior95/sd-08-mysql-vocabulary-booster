USE hr;
SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome Completo`,
    job.JOB_TITLE AS `Cargo`,
    emp.HIRE_DATE AS `Data de início do cargo`,
    dep.DEPARTMENT_NAME AS `Departamento`
FROM
    employees AS emp
        INNER JOIN
    jobs AS job ON job.JOB_ID = emp.JOB_ID
        INNER JOIN
    departments AS dep ON emp.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, job.JOB_TITLE	
; 
