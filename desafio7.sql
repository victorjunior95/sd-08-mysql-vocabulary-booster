SELECT UCASE(CONCAT(hre.FIRST_NAME, ' ', hre.LAST_NAME)) AS 'Nome completo',
hrjh.START_DATE AS 'Data de início',
hre.SALARY AS 'Salário'
FROM hr.employees AS hre
INNER JOIN hr.job_history AS hrjh
ON hre.EMPLOYEE_ID = hrjh.EMPLOYEE_ID
WHERE MONTH(hrjh.START_DATE) IN(1, 2, 3) 
ORDER BY `Nome completo`, `Data de início`;
