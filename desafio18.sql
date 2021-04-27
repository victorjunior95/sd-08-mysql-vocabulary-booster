SELECT 
  CONCAT(E.first_name, ' ', E.last_name) AS 'Nome completo',
  DATE_FORMAT(JH.start_date, '%d/%m/%Y') AS 'Data de início',
  DATE_FORMAT(JH.end_date, '%d/%m/%Y') AS 'Data de rescisão',
  ROUND(DATEDIFF(JH.end_date, JH.start_date) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
  ON E.employee_id = JH.employee_id
ORDER BY `Nome completo` , `Anos trabalhados`;
