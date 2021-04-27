-- Refeência e ajuda das colagas Ana Karine: https://github.com/tryber/sd-08-mysql-vocabulary-booster/tree/ana-karine-mysql-vocabulary-booster
-- e Rita RitaJeveaux: https://github.com/tryber/sd-08-mysql-vocabulary-booster/pull/26

SELECT 
    CONCAT(UCASE(e.FIRST_NAME),
            ' ',
            UCASE(e.LAST_NAME)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.job_history AS jh
        INNER JOIN
    employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    MONTH(START_DATE) IN (01, 02, 03)
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) , jh.START_DATE;
