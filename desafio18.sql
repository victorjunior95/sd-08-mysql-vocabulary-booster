-- Raciocinio para formatação de datas no SQL encotrada no site:
-- https://www.gigasystems.com.br/artigo/75/formatando-datas-no-mysql-com-date_format

SELECT 
    CONCAT(tb_empl.FIRST_NAME,
            ' ',
            tb_empl.LAST_NAME) AS 'Nome completo',
    DATE_FORMAT(tb_hist.START_DATE, '%d/%m/%Y') AS 'Data de início',
    DATE_FORMAT(tb_hist.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
    ROUND(DATEDIFF(tb_hist.END_DATE, tb_hist.START_DATE) / 365,
            2) AS 'Anos trabalhados'
FROM
    hr.employees AS tb_empl
        INNER JOIN
    hr.job_history AS tb_hist ON tb_empl.EMPLOYEE_ID = tb_hist.EMPLOYEE_ID
ORDER BY CONCAT(tb_empl.FIRST_NAME,
        ' ',
        tb_empl.LAST_NAME) , ROUND(DATEDIFF(tb_hist.END_DATE, tb_hist.START_DATE) / 365,
        2);
