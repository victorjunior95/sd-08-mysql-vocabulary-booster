SELECT CONCAT(tab1.FIRST_NAME, ' ', tab1.LAST_NAME) AS 'Nome completo funcionário 1',
tab1.SALARY AS 'Salário funcionário 1',
tab1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(tab2.FIRST_NAME, ' ', tab2.LAST_NAME) AS 'Nome completo funcionário 2',
tab2.SALARY AS 'Salário funcionário 2',
tab2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS tab1, hr.employees AS tab2
WHERE (tab1.JOB_ID = tab2.JOB_ID) AND tab1.EMPLOYEE_ID <> tab2.EMPLOYEE_ID
ORDER BY CONCAT(tab1.FIRST_NAME, ' ', tab1.LAST_NAME), CONCAT(tab2.FIRST_NAME, ' ', tab2.LAST_NAME);
