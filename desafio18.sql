SELECT 
    CONCAT(employees.FIRST_NAME,
            ' ',
            employees.LAST_NAME) AS 'Nome completo',
    DATE_FORMAT(START_DATE, '%d/%m/%Y') AS 'Data de início',-- https://www.w3schools.com/mysql/func_mysql_date_format.asp
    DATE_FORMAT(END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
    ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM
    hr.employees AS employees
        INNER JOIN
    hr.job_history AS job_history ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY `Nome completo` ASC , `Anos Trabalhados` ASC;
 