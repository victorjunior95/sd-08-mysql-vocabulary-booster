/* -- Desafio12.SQL */

SELECT
CONCAT(tbE1.FIRST_NAME, ' ', tbE1.LAST_NAME) 'Nome completo funcionário 1',
tbE1.SALARY 'Salário funcionário 1',
tbE1.PHONE_NUMBER 'Telefone funcionário 1',
CONCAT(tbE2.FIRST_NAME, ' ', tbE2.LAST_NAME) 'Nome completo funcionário 2',
tbE2.SALARY 'Salário funcionário 2',
tbE2.PHONE_NUMBER 'Telefone funcionário 2'
FROM hr.employees tbE1, hr.employees tbE2
WHERE tbE1.JOB_ID = tbE2.JOB_ID
AND tbE1.EMPLOYEE_ID <> tbE2.EMPLOYEE_ID
ORDER BY CONCAT(tbE1.FIRST_NAME, ' ', tbE1.LAST_NAME), CONCAT(tbE2.FIRST_NAME, ' ', tbE2.LAST_NAME);
