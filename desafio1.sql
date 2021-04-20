-- 1 - Exiba os países e indicando se cada um deles se encontra ou não na região formada pela Europa
SELECT COUNTRY_NAME as `País`, IF(REGION_ID = 1, "incluído","não incluído")  as `Status Inclusão` FROM hr.countries
ORDER BY `País`;
