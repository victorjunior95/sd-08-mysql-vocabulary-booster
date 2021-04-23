SELECT (SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) FROM hr.employees AS e WHERE e.EMPLOYEE_ID = j_h.EMPLOYEE_ID) AS 'Nome completo', CONCAT(LPAD(DAY(j_h.START_DATE), 2, 0),'/',LPAD(MONTH(j_h.START_DATE), 2, 0),'/',YEAR(j_h.START_DATE)) AS 'Data de início do cargo', CONCAT(LPAD(DAY(j_h.END_DATE), 2, 0),'/',LPAD(MONTH(j_h.END_DATE), 2, 0),'/',YEAR(j_h.END_DATE)) AS 'Data de rescisão', ROUND(DATEDIFF(j_h.END_DATE, j_h.START_DATE ) / 365, 2) AS 'Anos trabalhados' FROM hr.job_history AS j_h WHERE EMPLOYEE_ID <> 0 ORDER BY `Nome completo` , `Anos trabalhados`;

-- Referência
-- https://database.guide/how-to-add-leading-zeros-to-a-number-in-mysql/
