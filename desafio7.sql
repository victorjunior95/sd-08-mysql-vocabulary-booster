-- USE hr;
-- SELECT 
--     UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS `Nome Completo`,
--     jobh.START_DATE AS `Data de início do cargo`,
--     emp.SALARY AS `Salário`
-- FROM
--     employees AS emp,
--     job_history AS jobh
-- WHERE
--     MONTH(jobh.START_DATE) IN (1 , 2, 3)
-- ORDER BY `Nome Completo` DESC , jobh.START_DATE;
-- 	

SELECT 
  UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome completo',
  JH.START_DATE AS 'Data de início',
  E.SALARY AS 'Salário'
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
