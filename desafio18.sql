SELECT
  CONCAT(employees.first_name, " ", employees.last_name) AS `Nome completo`,
  DATE_FORMAT(job_history.start_date, '%d/%m/%Y') AS `Data de início`,
  DATE_FORMAT(job_history.end_date, '%d/%m/%Y') AS `Data de rescisão`,
  ROUND(DATEDIFF(job_history.end_date, job_history.start_date)/ 365, 2) AS `Anos trabalhados`
FROM 
  hr.employees AS employees
INNER JOIN 
  hr.job_history AS job_history
ON 
  employees.employee_id = job_history.employee_id
ORDER BY `Nome completo`, `Anos trabalhados`;
