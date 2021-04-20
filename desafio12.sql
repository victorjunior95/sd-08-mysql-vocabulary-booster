SELECT CONCAT(e_t1.FIRST_NAME, ' ', e_t1.LAST_NAME) AS `Nome completo funcionário 1`,
e_t1.SALARY AS `Salário funcionário 1`,
e_t1.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(e_t2.FIRST_NAME, ' ', e_t2.LAST_NAME) AS `Nome completo funcionário 2`,
e_t2.SALARY AS `Salário funcionário 2`,
e_t2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS e_t1, hr.employees AS e_t2
WHERE e_t1.JOB_ID = e_t2.JOB_ID AND e_t1.EMPLOYEE_ID <> e_t2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
