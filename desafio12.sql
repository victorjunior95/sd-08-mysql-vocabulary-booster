SELECT CONCAT(te.FIRST_NAME, ' ', te.LAST_NAME) AS 'Nome completo funcionário 1',
te.SALARY as 'Salário funcionário 1',
te.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(te2.FIRST_NAME, ' ', te2.LAST_NAME) AS 'Nome completo funcionário 2',
te2.SALARY as 'Salário funcionário 2',
te2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees as te, hr.employees as te2
WHERE te.JOB_ID = te2.JOB_ID 
AND CONCAT(te.FIRST_NAME, ' ', te.LAST_NAME) <> CONCAT(te2.FIRST_NAME, ' ', te2.LAST_NAME)
ORDER BY CONCAT(te.FIRST_NAME, ' ', te.LAST_NAME), CONCAT(te2.FIRST_NAME, ' ', te2.LAST_NAME);
