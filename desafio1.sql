select COUNTRY_NAME as País, IF(region_id = 1, 'incluído', 'não incluído' ) as `Status Inclusão` from hr.countries;
