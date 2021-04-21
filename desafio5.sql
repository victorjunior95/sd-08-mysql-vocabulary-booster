SELECT 
    j.JOB_TITLE AS Cargo,
    MAX_SALARY - MIN_SALARY AS `Variação Salarial`,
    ROUND(j.MIN_SALARY/12, 2) AS `Média mínima mensal`,
    ROUND(j.MAX_SALARY/12, 2) AS `Média máxima mensal`
FROM
    hr.employees e
        LEFT JOIN
    hr.jobs j ON j.JOB_ID = e.JOB_ID
GROUP BY e.JOB_ID
ORDER BY `Variação Salarial` , Cargo;
