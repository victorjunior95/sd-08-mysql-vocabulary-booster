SELECT COUNTRY_NAME AS 'País', (SELECT if(REGION_ID = 1,'incluído','não incluído'))AS 'Status Inclusão' FROM hr.countries;