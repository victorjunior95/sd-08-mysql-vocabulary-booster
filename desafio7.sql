SELECT CONCAT(UCASE(first_name), ' ', UCASE(last_name)) AS `Nome completo`,
jh.START_DATE AS `Data de início`,
e.salary AS `Salário`
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON jh.employee_ID = e.employee_ID
WHERE MONTH(jh.START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo` ASC, `Data de início` ASC;
