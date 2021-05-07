SELECT
  CONCAT(
    employees.FIRST_NAME,
    ' ',
    employees.LAST_NAME
  ) AS `Nome completo`,
  CONCAT(
    LPAD(DAY(job_history.START_DATE), 2, 0),
    '/',
    LPAD(MONTH(job_history.START_DATE), 2, 0),
    '/',
    YEAR(job_history.START_DATE)
  ) AS `Data de início`,
  CONCAT(
    LPAD(DAY(job_history.END_DATE), 2, 0),
    '/',
    LPAD(MONTH(job_history.END_DATE), 2, 0),
    '/',
    YEAR(job_history.END_DATE)
  ) AS `Data de rescisão`,
  ROUND(
    DATEDIFF(job_history.END_DATE, job_history.START_DATE) / 365, 2)
  AS `Anos trabalhados`
FROM hr.employees AS employees
INNER JOIN hr.job_history AS job_history
  ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
