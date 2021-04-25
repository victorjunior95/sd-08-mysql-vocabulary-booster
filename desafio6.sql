/* -- Desafio6.SQL */

SELECT 
CONCAT(tbE.FIRST_NAME, ' ', tbE.LAST_NAME) 'Nome completo',
tbJ.JOB_TITLE 'Cargo',
tbJH.START_DATE 'Data de início do cargo',
tbD.DEPARTMENT_NAME 'Departamento'
FROM hr.employees tbE
INNER JOIN hr.job_history tbJH
ON tbE.EMPLOYEE_ID = tbJH.EMPLOYEE_ID
INNER JOIN hr.jobs tbJ
ON tbJH.JOB_ID = tbJ.JOB_ID
INNER JOIN hr.departments tbD
ON tbJH.DEPARTMENT_ID = tbD.DEPARTMENT_ID
ORDER BY CONCAT(tbE.FIRST_NAME, ' ', tbE.LAST_NAME) DESC, tbJ.JOB_TITLE;
