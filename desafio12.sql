SELECT CONCAT(EMP.First_Name, ' ', EMP.Last_Name) AS 'Nome completo funcionário 1',
EMP.salary AS 'Salário funcionário 1',
EMP.phone_number AS 'Telefone funcionário 1',
CONCAT(EMP2.First_Name, ' ', EMP2.Last_Name) AS 'Nome completo funcionário 2',
EMP2.salary AS 'Salário funcionário 2',
EMP2.phone_number AS 'Telefone funcionário 2'
FROM hr.employees AS EMP
INNER JOIN hr.employees AS EMP2 ON EMP.JOB_ID = EMP2.JOB_ID
WHERE EMP.EMPLOYEE_ID <> EMP2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
