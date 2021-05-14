SELECT 
    CONCAT(eply.FIRST_NAME, ' ', eply.LAST_NAME) AS `Nome completo`,
    DATE_FORMAT(hst.START_DATE, '%d/%m/%Y') AS `Data de início`,
    DATE_FORMAT(hst.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
    ROUND((DATEDIFF(hst.END_DATE, hst.START_DATE)) / 365,
            2) AS `Anos trabalhados`
FROM
    hr.job_history AS hst
        INNER JOIN
    hr.employees AS eply
WHERE
    hst.EMPLOYEE_ID = eply.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
