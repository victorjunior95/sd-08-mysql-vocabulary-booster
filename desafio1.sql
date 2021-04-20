SELECT country_name AS "País", IF(region_id = 1, 'incluído', 'não incluído') AS 'Status Inclusão' FROM hr.countries ORDER BY country_name;

-- SELECT * FROM hr.countries;
-- SELECT * FROM hr.regions;
-- SELECT country_name AS "País", 
-- 	IF(region_id = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
--     FROM hr.countries
--     ORDER BY country_name;
