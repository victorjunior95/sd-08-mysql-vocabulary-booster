-- 5 - Exiba os cargos com sua variação salarial e suas médias máxima e mínima mensal,
-- considerando salários máximo e mínimo de um cargo como anuais
-- 	Crie uma query que exiba 04 colunas:
-- 		a) A primeira deve possuir o alias "Cargo" e exibir o nome do cargo.
-- 		b) A segunda deve possuir o alias "Variação Salarial" e exibir a diferença entre os salários máximo
-- 		e mínimo daquele cargo.
-- 		c) A terceira deve possuir o alias "Média mínima mensal" e exibir o salário mínimo mensal daquele
-- 		cargo. Arredonde a média com uma precisão de duas casas decimais.
-- 		d) A quarta deve possuir o alias "Média máxima mensal" e exibir o salário máximo mensal daquele
-- 		cargo. Arredonde a média com uma precisão de duas casas decimais.
-- 	Os resultados devem estar ordenados pela variação salarial em ordem crescente.
-- 	Em caso de empate na variação, os resultados devem ser ordenados pelo nome do cargo em ordem alfabética.
SELECT JOB_TITLE AS `Cargo`, (MAX_SALARY - MIN_SALARY) AS `Variação Salarial`,
ROUND((MIN_SALARY / 12), 2) AS `Média mínima mensal`, ROUND((MAX_SALARY / 12), 2) AS `Média máxima mensal`
FROM hr.jobs
ORDER BY `Variação Salarial`, `Cargo`;
