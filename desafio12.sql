SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo funcionário 1`,
E.SALARY AS `Salário funcionário 1`,
E.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(J.FIRST_NAME, ' ', J.LAST_NAME) AS `Nome completo funcionário 2`,
J.SALARY AS `Salário funcionário 2`,
J.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS E
INNER JOIN hr.employees AS J
ON J.JOB_ID = E.JOB_ID
AND J.EMPLOYEE_ID <> E.EMPLOYEE_ID
ORDER BY `Nome Completo funcionário 1`, `Nome Completo funcionário 2`;
