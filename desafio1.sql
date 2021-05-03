SELECT
	countries.COUNTRY_NAME AS 'País',
	IF (
		REGION_ID = 'Europe', 'incluído', 'não incluído'
	) AS 'Status Inclusão'
FROM hr.countries;
