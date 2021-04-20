-- 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo
-- 	Crie uma query que exiba 03 colunas:
-- 		a) A primeira deve possuir o alias "Cargo" e exibir o nome do cargo.
-- 		b) A segunda deve possuir o alias "Média salarial" e exibir a média dos salários das pessoas
-- 		empregadas que possuem o cargo em questão.
-- 		c) A terceira deve possuir o alias "Senioridade" e categorizar o nível de senioridade do cargo
-- 		com base na média salarial, da seguinte forma:
-- 			Média salarial entre 2000 - 5800 Júnior
-- 			Média salarial entre 5801 - 7500 Pleno
-- 			Média salarial entre 7501 - 10500 Sênior
-- 			Média salarial acima de 10500 CEO
-- 	Sempre que fizer uso da média salarial, arredonde o valor para 02 casas decimais.
-- 	Os resultados devem estar ordenados pela média salarial em ordem crescente.
-- 	Em caso de empate na média, os resultados devem ser ordenados pelo nome do cargo em ordem alfabética.
SELECT j.JOB_TITLE AS `Cargo`, ROUND(AVG(e.SALARY), 2) AS `Média Salarial`,
CASE
WHEN AVG(e.SALARY) > 1999 AND AVG(e.SALARY) < 5801 THEN "Júnior"
WHEN AVG(e.SALARY) > 5800 AND AVG(e.SALARY) < 7501 THEN "Pleno"
WHEN AVG(e.SALARY) > 7500 AND AVG(e.SALARY) < 10501 THEN "Sênior"
ELSE "CEO"
END AS `Senioridade`
FROM hr.jobs AS j
INNER JOIN hr.employees AS e ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_ID
ORDER BY `Média Salarial`, `Cargo`;
