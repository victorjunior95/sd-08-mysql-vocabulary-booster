SELECT UCASE(concat(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
HIRE_DATE AS 'Data de início',
SALARY AS 'Salário'
FROM hr.employees
ORDER BY concat(FIRST_NAME, ' ', LAST_NAME), HIRE_DATE;