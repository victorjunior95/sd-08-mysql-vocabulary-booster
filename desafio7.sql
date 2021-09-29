-- 7 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus
-- cargos nos meses de janeiro, fevereiro ou março
-- 	Monte uma query que exiba 03 colunas:
-- 		a) A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada
-- 		em CAIXA ALTA (não se esqueça do espaço entre o nome e o sobrenome).
-- 		b) A segunda deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo.
-- 		c) A terceira deve possuir o alias "Salário" e exibir o salário da pessoa.
-- 	Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética.
-- 	Em caso de empate no nome completo, ordene os resultados pela data de início que a pessoa iniciou
-- 	seu cargo, em ordem crescente.
SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
jh.START_DATE AS `Data de início`,
e.SALARY AS `Salário`
FROM hr.employees AS e INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) BETWEEN 01 AND 03
ORDER BY `Nome completo`, `Data de início`;
