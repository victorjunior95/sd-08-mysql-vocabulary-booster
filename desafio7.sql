SELECT 
    UCASE(CONCAT(employ.FIRST_NAME, ' ', employ.LAST_NAME)) AS "Nome Completo",
    hty.START_DATE AS "Data de início",
    employ.SALARY AS "Salário"
FROM
    hr.employees AS employ
        INNER JOIN
    hr.job_history AS hty ON employ.EMPLOYEE_ID = hty.EMPLOYEE_ID
ORDER BY `Nome completo` , `Data de início`;
