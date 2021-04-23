SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
  # https://pt.stackoverflow.com/questions/17679/como-inserir-date-e-datetime-em-uma-tabela-no-mysql#:~:text=O%20formato%20que%20o%20MySQL,se%20manter%20igual%20no%20DB. 
  DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') AS 'Data de início',
  DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
  ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
