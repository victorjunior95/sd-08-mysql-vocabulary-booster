-- 18 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas, mostrando as datas de início e de saída, assim como os anos que ela ficou nesse cargo
-- Use o banco hr como referência
-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas, mostrando as datas de início e de saída, assim como os anos que ela ficou nesse cargo. Para isso, usando o banco hr como referência, monte uma query que exiba quatro colunas:
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo, no formato brasileiro (dd/mm/aaaa). Ou seja, se a pessoa iniciou o cargo em questão no dia 2 de janeiro de 1990, sua data de início deveria ser 02/01/1990.
-- A terceira coluna deve possuir o alias "Data de rescisão" e exibir a data que a pessoa saiu do cargo, no formato brasileiro (dd/mm/aaaa). Ou seja, se a pessoa saiu do cargo em questão no dia 3 de setembro de 1995, sua data de rescisão deveria ser 03/09/1995.
-- A quarta coluna deve possuir o alias "Anos trabalhados" e exibir, usando como base as datas de saída e entrada, os anos que a pessoa ficou no cargo em questão, arredondados para duas casas decimais.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética. Em caso de empate no nome completo, ordene os resultados pelos anos trabalhados por ela no cargo em questão, em ordem crescente.
SELECT CONCAT(E.first_name, ' ', E.last_name) AS 'Nome completo',
  DATE_FORMAT(JH.start_date, '%d/%m/%Y') AS 'Data de início',
  DATE_FORMAT(JH.end_date, '%d/%m/%Y') AS 'Data de rescisão',
  ROUND(
    DATEDIFF(JH.end_date, JH.start_date) / 365,
    2
  ) AS 'Anos trabalhados'
FROM hr.job_history AS JH
  INNER JOIN hr.employees AS E ON E.employee_id = JH.employee_id
ORDER BY `Nome completo`,
  `Anos trabalhados`;
