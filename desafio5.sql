SELECT 
  j.JOB_TITLE AS `Cargo`,
  j.MAX_SALARY - j.MIN_SALARY AS `Variação Salarial`,
  ROUND(j.MIN_SALARY DIV 12, 2) AS `Média mínima mensal`,
  ROUND(j.MAX_SALARY DIV 12, 2) AS `Média máxima mensal`
FROM hr.jobs as j
