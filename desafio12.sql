-- 12 - Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo
-- Suponha que haja somente 03 pessoas funcionárias, João, Maria e Alex, e:
-- 	João e Maria possuem o mesmo cargo;
-- 	Alex não tem outra pessoa funcionária com o mesmo cargo.
-- Logo, podemos dizer que João tem uma pessoa funcionária associada, Maria, que possui o mesmo cargo.
-- Também podemos dizer que Maria tem uma pessoa funcionária associada, João, que possui o mesmo cargo.
-- Já Alex não tem outra pessoa funcionária associada com o mesmo cargo. Portanto, seu relatório deveria
-- ter dois resultados, um indicando que Maria tem uma pessoa associada João que possui o mesmo cargo,
-- e o outro resultado indicando que João tem uma pessoa associada Maria que possui o mesmo cargo.
-- 	Monte uma query que exiba 06 colunas:
-- 		a) A primeira deve possuir o alias "Nome completo funcionário 1" e exibir o nome completo da pessoa
-- 		funcionária (não se esqueça do espaço entre o nome e o sobrenome).
-- 		b) A segunda deve possuir o alias "Salário funcionário 1" e exibir o salário dessa pessoa.
-- 		c) A terceira deve possuir o alias "Telefone funcionário 1" e exibir o número de telefone dessa pessoa.
-- 		d) A quarta deve possuir o alias "Nome completo funcionário 2" e exibir o nome completo da pessoa
-- 		funcionária associada que possui o mesmo cargo (não se esqueça do espaço entre o nome e o sobrenome).
-- 		e) A quinta deve possuir o alias "Salário funcionário 2" e exibir o salário da pessoa funcionária
-- 		associada que possui o mesmo cargo.
-- 		f) A sexta deve possuir o alias "Telefone funcionário 2" e exibir o número da pessoa funcionária
-- 		associada que possui o mesmo cargo.
-- 	Os resultados devem estar ordenados pela coluna "Nome completo funcionário 1" em ordem alfabética.
-- 	Em caso de empate, os resultados devem ser ordenados pela coluna Nome completo funcionário 2" em
-- 	ordem alfabética.
-- hr.
SELECT CONCAT(e1.FIRST_NAME, ' ', e1.LAST_NAME) AS `Nome completo funcionário 1`,
e1.SALARY AS `Salário funcionário 1`, e1.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(e2.FIRST_NAME, ' ', e2.LAST_NAME) AS `Nome completo funcionário 2`,
e2.SALARY AS `Salário funcionário 2`, e2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS e1, hr.employees AS e2
WHERE e1.JOB_ID = e2.JOB_ID AND e1.EMPLOYEE_ID <> e2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
