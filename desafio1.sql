SELECT 
    COUNTRY_NAME AS País,
    IF(h.REGION_NAME = 'Europe',
        'incluído',
        'não incluído') AS `Status Inclusão`
FROM
    hr.countries c
        LEFT JOIN
    hr.regions h ON c.REGION_ID = h.REGION_ID;
