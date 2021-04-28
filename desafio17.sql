SELECT
(
  SELECT CONCAT(hre.FIRST_NAME, ' ', hre.LAST_NAME) FROM hr.employees AS hre
  WHERE hre.employee_id = jh.EMPLOYEE_ID
) AS `Nome completo`,
DATE_FORMAT(hrjh.START_DATE, '%d/%m/%Y') AS "Data de início",
DATE_FORMAT(hrjh.END_DATE, '%d/%m/%Y') AS "Data de rescisão",
ROUND(DATEDIFF(hrjh.END_DATE, hrjh.START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.job_history AS hrjh
WHERE hrjh.employee_id <> 0
ORDER BY `Nome completo`, `Anos trabalhados`;
