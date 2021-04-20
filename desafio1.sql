SELECT 
    COUNTRY_NAME,
    IF (h.REGION_NAME = "Europe", "incluído", "não incluído")
FROM
    hr.countries c
LEFT JOIN
	hr.regions h
ON 
	c.REGION_ID = h.REGION_ID;
