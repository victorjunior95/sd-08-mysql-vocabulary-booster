SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
    START_DATE AS 'Data de início',
    SALARY AS 'Salário'
FROM hr.employees AS hremp
    INNER JOIN hr.job_history AS hrhis ON hremp.EMPLOYEE_ID = hrhis.EMPLOYEE_ID
WHERE MONTH(hrhis.START_DATE) IN(1, 2, 3)
ORDER BY `Nome completo`,
    `Data de início`;
