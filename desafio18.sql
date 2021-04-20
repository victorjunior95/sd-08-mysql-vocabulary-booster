SELECT
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
  CONCAT(
    RIGHT(CONCAT('0', DAY(JH.START_DATE)), 2),
    '/', RIGHT(CONCAT('0', MONTH(JH.START_DATE)), 2),
    '/', YEAR(JH.START_DATE)
  ) AS 'Data de início',
  CONCAT(
    RIGHT(CONCAT('0', DAY(JH.END_DATE)), 2),
    '/', RIGHT(CONCAT('0', MONTH(JH.END_DATE)), 2),
    '/', YEAR(JH.END_DATE)
  ) AS 'Data de rescisão',
  ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
