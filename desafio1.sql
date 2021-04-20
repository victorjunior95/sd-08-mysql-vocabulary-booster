-- 1 - Exiba os países e indicando se cada um deles se encontra ou não na região formada pela Europa
-- 	Seu relatório deve apresentar 02 colunas:
-- 		a) A primeira deve possuir o alias "País" e exibir o nome do país.
-- 		b) A segunda deve possuir o alias "Status Inclusão" e deve exibir "incluído" se o país em questão
-- 		está incluso em "Europe", ou "não incluído", caso contrário.
-- 	Os resultados devem estar ordenados pelo nome do país em ordem alfabética.
SELECT
	COUNTRY_NAME AS `País`,
	IF (REGION_ID = 1, 'incluido', 'não incluido') AS `Status Inclusão`
FROM
	hr.countries
ORDER BY `País`;
