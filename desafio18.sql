SELECT
  CONCAT(
    employees.FIRST_NAME,
    ' ',
    employees.LAST_NAME
  ) AS `Nome completo`,
  CONCAT(
    DAY(job_history.START_DATE),
    '/',
    MONTH(job_history.START_DATE),
    '/',
    YEAR(job_history.START_DATE)
  ) AS `Data de início`,
  CONCAT(
    DAY(job_history.END_DATE),
    '/',
    MONTH(job_history.END_DATE),
    '/',
    YEAR(job_history.END_DATE)
  ) AS `Data de recisão`,
  YEAR(job_history.END_DATE) - YEAR(job_history.START_DATE)
    AS `Anos trabalhados`
FROM hr.employees AS employees
INNER JOIN hr.job_history AS job_history
  ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
