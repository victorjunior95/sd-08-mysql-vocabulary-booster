SELECT
    CONCAT(UCASE(tb_emply.FIRST_NAME),
            ' ',
            UCASE(tb_emply.LAST_NAME)) AS 'Nome completo',
    DATE(tb_hist.START_DATE) AS 'Data de início',
    tb_emply.SALARY AS 'Salário'
FROM
    hr.employees AS tb_emply
        INNER JOIN
    hr.job_history AS tb_hist ON tb_emply.EMPLOYEE_ID = tb_hist.EMPLOYEE_ID
WHERE
    MONTH(tb_hist.START_DATE) IN (01 , 02, 03)
ORDER BY CONCAT(UCASE(tb_emply.FIRST_NAME),
        ' ',
        UCASE(tb_emply.LAST_NAME)) ASC , tb_hist.START_DATE ASC;
