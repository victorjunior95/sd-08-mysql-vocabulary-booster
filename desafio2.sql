-- 2 - Exiba os cargos com seu nível de renumeração associado, com base no salário máximo do cargo
-- 	Seu relatório deve possuir as seguintes colunas:
-- 		a) A primeira deve possuir o alias "Cargo" e exibir o nome do cargo.
-- 		b) A segunda deve possuir o alias "Nível" e exibir o nível de remuneração do cargo com base no seu salário máximo, categorizando os níveis de remuneração da seguinte forma:
-- 			b.1 Salário máximo entre 5000 e 10000 Baixo
-- 			b.2 Salário máximo entre 10001 e 20000 Médio
-- 			b.3 Salário máximo entre 20001 e 30000 Alto
-- 			b.4 Salário máximo acima de 30000 Altíssimo
-- 	Os resultados devem estar ordenados pelo nome do cargo em ordem alfabética.
SELECT
	JOB_TITLE AS `Cargo`,
    CASE
		WHEN MAX_SALARY > 4999 AND MAX_SALARY < 10001 THEN "Baixo"
        WHEN MAX_SALARY > 10000 AND MAX_SALARY < 20001 THEN "Médio"
        WHEN MAX_SALARY > 20000 AND MAX_SALARY < 30001 THEN "Alto"
        ELSE "Altíssimo"
	END AS `Nível`
FROM
	hr.jobs
ORDER BY `Cargo`;
