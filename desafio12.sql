SELECT CONCAT(A.first_name, ' ', A.last_name) AS `Nome completo funcionário 1`, A.salary AS `Salário funcionário 1`, A.phone_number AS `Telefone funcionário 1`,
CONCAT(B.first_name, ' ', B.last_name) AS `Nome completo funcionário 2`, B.salary AS `Salário funcionário 2`, B.phone_number AS `Telefone funcionário 2`
FROM hr.employees A, hr.employees B WHERE A.job_id = B.job_id AND CONCAT(A.first_name, ' ', A.last_name) <> CONCAT(B.first_name, ' ', B.last_name)
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
