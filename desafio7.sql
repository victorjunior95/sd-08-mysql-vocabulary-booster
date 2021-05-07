SELECT
 UCASE(CONCAT(e.FIRST_NAME,' ',e.LAST_NAME)) AS `Nome completo`,
  h.START_DATE AS `Data de início`,
  e.salary AS 'Salário'
FROM job_history h
INNER JOIN employees e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
INNER JOIN jobs j ON j.JOB_ID = h.JOB_ID
INNER JOIN departments d ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
where month(h.START_DATE) IN(01,02,03)
ORDER BY `Nome completo`, `Data de início`;
