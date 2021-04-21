SELECT CONCAT(wc.FIRST_NAME, ' ', wc.LAST_NAME) AS 'Nome completo funcionário 1',
wc.SALARY AS 'Salário funcionário 1',
wc.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(wc2.FIRST_NAME, ' ', wc2.LAST_NAME) AS 'Nome completo funcionário 2',
wc2.SALARY AS 'Salário funcionário 2',
wc2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS wc, hr.employees AS wc2
WHERE wc.JOB_ID = wc2.JOB_ID
AND wc.EMPLOYEE_ID <> wc2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
