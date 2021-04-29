SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome Completo`,
DATE_FORMAT(h.START_DATE, "%d/%m/%Y") AS `Data de início`,
DATE_FORMAT(h.END_DATE, "%d/%m/%Y") AS `Data de rescisão`,
TIMESTAMPDIFF(YEAR, h.START_DATE, h.END_DATE) AS `Anos trabalhados`
FROM hr.employees AS e
INNER JOIN hr.job_history AS h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY `Nome Completo`, `Anos trabalhados`

-- calculando diferença de anos
-- http://jquerydicas.blogspot.com/2013/11/mysql-diferenca-entre-datas.html#:~:text=Para%20calcular%20a%20diferen%C3%A7a%20entre,no%201%C2%BA%20e%202%C2%BA%20exemplos.&text=Tamb%C3%A9m%20podemos%20utilizar%20a%20fun%C3%A7%C3%A3o,no%203%C2%BA%20e%204%C2%BA%20exemplos.
-- ordenando datas https://www.w3schools.com/sql/func_mysql_date_format.asp
