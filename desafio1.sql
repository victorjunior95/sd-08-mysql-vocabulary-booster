SELECT c.country_name AS País, IF(r.region_name = 'Europe', 'incluído', 'não incluído') AS `Status Inclusão`
FROM hr.countries c
LEFT JOIN hr.regions r
ON c.region_id = r.region_id
ORDER BY c.country_name;
