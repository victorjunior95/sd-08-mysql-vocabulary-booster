SELECT hr.countries.COUNTRY_NAME as 'País',
	IF(hr.countries.REGION_ID = 1, 'incluído', 'não incluído') as 'Status Inclusão'
    FROM hr.countries ORDER BY hr.countries.COUNTRY_NAME;