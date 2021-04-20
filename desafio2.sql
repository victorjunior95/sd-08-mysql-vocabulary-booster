SELECT 
  hrj.JOB_TITLE AS 'Cargo', 
CASE
WHEN hrj.MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
WHEN hrj.MAX_SALARY BETWEEN 10001 AND 20000 THEN 'Médio'
WHEN hrj.MAX_SALARY BETWEEN 20001 AND 30000 THEN 'Alto'
WHEN hrj.MAX_SALARY > 3000 THEN 'Altissimo'
END AS 'Nível'
FROM
  hr.jobs AS hrj
ORDER BY hrj.JOB_TITLE;
