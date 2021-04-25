-- 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo
-- USE hr;
-- SELECT 
--   j.JOB_TITLE AS `Cargo`,
--   e.SALARY AS `Média salarial` 
--   (CASE
--     WHEN ROUND(AVG(e.SALARY), 2) < 5800 THEN "Júnior"
--     WHEN ROUND(AVG(e.SALARY), 2) < 7500 THEN "Pleno"
--     WHEN ROUND(AVG(e.SALARY), 2) < 10500 THEN "Sênior"
--     ELSE "CEO"
-- END) 
-- AS `Senioridade` 
-- FROM employees as e
-- JOIN jobs j
-- ON e.JOB_ID = j.JOB_ID

-- ORDER BY `Média salarial`, `Cargo`  ;

-- select * from hr.jobs;
-- Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select * from hr.jobs' at line 15

-- SELECT 
--   j.JOB_TITLE AS `Cargo`,
--  FROM hr.jobs AS j 
--  avg(hr.employees.SALARY) AS `Média salarial`
--  SELECT * FROM  hr.employees
-- WHERE EXISTS (
--   SELECT * FROM  hr.employees
--   WHERE j.JOB_ID = hr.employees.JOB_ID
-- );
-- inspirado no codigo fo Digo Castro
SELECT inter.Cargo, inter.`Média salarial`,
CASE
WHEN inter.`Média salarial` <= 5800 THEN 'Júnior'
WHEN inter.`Média salarial` > 5800 AND inter.`Média salarial` <= 7500 THEN 'Pleno'
WHEN inter.`Média salarial` > 7500 AND inter.`Média salarial` <= 10500 THEN 'Sênior'
WHEN inter.`Média salarial` > 10500 THEN 'CEO'
ELSE 'Valor não categorizado'
END
AS 'Senioridade'
FROM (
SELECT j.JOB_TITLE AS 'Cargo', ROUND(AVG(e.SALARY), 2) AS 'Média salarial' FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_TITLE
) AS inter
ORDER BY inter.`Média salarial`, inter.Cargo;
