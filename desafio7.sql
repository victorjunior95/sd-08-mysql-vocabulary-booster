-- 7 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março
-- SELECT CONCAT(e.FIRST_NAME,' ', e.LAST_NAME)  AS 'Nome completo', e.HIRE_DATE AS 'Data de início', e.SALARY AS 'Salário'  FROM hr.employees AS e 
-- WHERE HIRE_DATE BETWEEN '1987-01-01' AND '1987-03-31';
-- select  FROM hr.job_history
-- where START_DATE like '____-01-__'  OR START_DATE like '____-02-__' OR START_DATE like '____-03-__';
SELECT 
sub.`Nome completo` AS 'Nome completo',
sub.`Date` AS 'Data de início',
sub.`Salário` AS 'Salário'
FROM (
SELECT  j.JOB_TITLE AS 'Cargo', 
CONCAT(UCASE(e.FIRST_NAME),' ', UCASE(e.LAST_NAME))   AS 'Nome completo', jh.START_DATE AS 'Date',  e.SALARY AS 'Salário' FROM hr.job_history AS  jh 
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON jh.JOB_ID = j.JOB_ID
INNER JOIN hr.departments AS d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
) AS sub
where sub.`Date` like '____-01-__'  OR sub.`Date` like '____-02-__' OR sub.`Date` like '____-03-__'
ORDER BY 1, 3;
