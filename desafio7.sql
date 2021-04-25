SELECT
  CONCAT(
    UCASE(a.FIRST_NAME),
    ' ',
    UCASE(a.LAST_NAME)
  ) AS `Nome completo`,
  b.START_DATE AS `Data de início`,
  a.SALARY AS `Salário`
FROM
  hr.job_history AS b
  INNER JOIN employees AS a ON b.EMPLOYEE_ID = a.EMPLOYEE_ID
WHERE
  MONTH(START_DATE) IN (01, 02, 03)
ORDER BY
  `Nome completo`,
  `Data de início`;
