SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
DATE_FORMAT(START_DATE, '%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS `Anos trabalhados`
FROM job_history AS JH
INNER JOIN employees AS E 
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome Completo`, `Anos trabalhados`;

-- DATEDIFF Return the number of days between two date values
-- TIRADO DO SITE: https://www.w3schools.com/mysql/func_mysql_datediff.asp