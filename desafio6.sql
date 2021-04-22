-- USE hr;
-- SELECT 
--     CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome Completo`,
--     job.JOB_TITLE AS `Cargo`,
--     emp.HIRE_DATE AS `Data de início do cargo`,
--     dep.DEPARTMENT_NAME AS `Departamento`
-- FROM
--     employees AS emp
--         INNER JOIN
--     jobs AS job ON job.JOB_ID = emp.JOB_ID
--         INNER JOIN
--     departments AS dep ON emp.DEPARTMENT_ID = dep.DEPARTMENT_ID
-- ORDER BY `Nome Completo` DESC, job.JOB_TITLE	
-- ; 

SELECT
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) as 'Nome completo',
  J.JOB_TITLE AS 'Cargo',
  JH.START_DATE AS 'Data de início do cargo',
  D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.jobs AS J
ON JH.JOB_ID = J.JOB_ID
INNER JOIN hr.departments AS D
ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
