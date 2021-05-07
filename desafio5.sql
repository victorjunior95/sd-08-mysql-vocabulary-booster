SELECT job_title AS Cargo, 
max_salary - min_salary AS "Variação Salarial", 
ROUND(min_salary/12, 2) as "Média mínima mensal",
ROUND(max_salary/12, 2) as "Média máxima mensal"
FROM hr.jobs
ORDER BY max_salary - min_salary ASC,
Cargo ASC;
