SELECT 
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
  CONCAT(
    IF(DAY(jh.START_DATE) <= 9, CONCAT('0',DAY(jh.START_DATE)), DAY(jh.START_DATE)),
    '/',
    IF(MONTH(jh.START_DATE) <= 9, CONCAT('0',MONTH(jh.START_DATE)), MONTH(jh.START_DATE)),
    '/',
    YEAR(jh.START_DATE)
  ) AS `Data de início`,
  CONCAT(
    IF(DAY(jh.END_DATE) <= 9, CONCAT('0',DAY(jh.END_DATE)), DAY(jh.END_DATE)),
    '/',
    IF(MONTH(jh.END_DATE) <= 9, CONCAT('0',MONTH(jh.END_DATE)), MONTH(jh.END_DATE)),
    '/',
    YEAR(jh.END_DATE)    
  ) AS `Data de rescisão`,
  ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome Completo`, `Anos trabalhados`;
