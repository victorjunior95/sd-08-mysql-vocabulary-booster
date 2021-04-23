SELECT CONCAT(UPPER(E.first_name), ' ', UPPER(E.last_name)) AS "Nome completo",
JH.start_date AS "Data de início",
E.salary AS Salário
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE SUBSTRING(JH.start_date,6,2) BETWEEN (01) AND (03)
ORDER BY `Nome completo`, `Data de início` ;
