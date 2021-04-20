SELECT 
    tb_coun.COUNTRY_NAME AS País,
    IF(tb_regi.REGION_NAME = 'Europe',
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries AS tb_coun
        INNER JOIN
    hr.regions AS tb_regi ON tb_coun.REGION_ID = tb_regi.REGION_ID
ORDER BY tb_coun.COUNTRY_NAME ASC;