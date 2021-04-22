SELECT * FROM hr.employees;
SELECT
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo funcionário 1`,
SALARY AS `Salário funcionário 1`,
PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo funcionário 2`, -- pessoa associada
SALARY AS `Salário funcionário 2`, -- salário da pessoa associada
PHONE_NUMBER AS `Telefone funcionário 2` -- telefone da pessoa associada
FROM hr.employees;