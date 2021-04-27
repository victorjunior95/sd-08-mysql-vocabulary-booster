SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo funcionário 1`,
    e.SALARY AS `Salário funcionário 1`,
    e.PHONE_NUMBER AS `Telefone funcionário 1`,
    CONCAT(g.FIRST_NAME, ' ', g.LAST_NAME) AS `Nome completo funcionário 2`,
    g.SALARY AS `Salário funcionário 2`,
    g.PHONE_NUMBER AS `Telefone funcionário 2`
FROM
    hr.employees e, hr.employees g
WHERE e.JOB_ID = g.JOB_ID
        AND e.EMPLOYEE_ID <> g.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
