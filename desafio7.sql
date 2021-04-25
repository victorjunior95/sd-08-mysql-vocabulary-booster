/* -- Desafio7.SQL */

SELECT
UCASE(CONCAT(tbE.FIRST_NAME, ' ', tbE.LAST_NAME)) 'Nome completo',
tbJH.START_DATE 'Data de início',
tbE.SALARY 'Salário'
FROM hr.employees tbE
INNER JOIN hr.job_history tbJH
ON tbE.EMPLOYEE_ID = tbJH.EMPLOYEE_ID
WHERE MONTH(tbJH.START_DATE)
IN (1, 2, 3)
ORDER BY UCASE(CONCAT(tbE.FIRST_NAME, ' ', tbE.LAST_NAME)), tbJH.START_DATE;
