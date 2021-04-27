SELECT CONCAT(Emp1.FIRST_NAME, ' ', Emp1.LAST_NAME) AS `Nome completo funcionário 1`,
Emp1.SALARY AS `Salário funcionario 1`,
Emp1.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(Emp2.FIRST_NAME, ' ', Emp2.LAST_NAME) AS `Nome completo funcionário 2`,
Emp2.SALARY AS `Salário funcionario 2`,
Emp2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS `Emp1`,
hr.employees AS `Emp2`
WHERE Emp1.JOB_ID = Emp2.JOB_ID AND Emp1.EMPLOYEE_ID <> Emp2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
