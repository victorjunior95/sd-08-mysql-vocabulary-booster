SELECT country_name AS País, IF(region_id = 1, 'incluído', 'não incluído') AS "Status Inclusão"
FROM hr.countries
ORDER BY country_name;
SELECT 
  job AS Cargo,
  CASE
    WHEN max_salary BETWEEN 5000 AND 10000 THEN "Baixo"
    WHEN max_salary BETWEEN 10001 AND 20000 THEN "Médio"
    WHEN max_salary BETWEEN 20001 AND 30000 THEN "Alto"
    WHEN max_salary > 30000 THEN "Altíssimo"
    ELSE "não classificado"
  END AS Nível
FROM hr.jobs
ORDER BY job_title;
