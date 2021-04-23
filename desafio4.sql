SELECT job_title AS "Cargo",
(SELECT ROUND(AVG(salary),2) FROM hr.employees AS E WHERE J.JOB_ID = E.JOB_ID) AS "Média salarial",
CASE
WHEN (SELECT ROUND(AVG(salary),2) FROM hr.employees AS E WHERE J.JOB_ID = E.JOB_ID) BETWEEN (2000) AND (5800) THEN "Júnior"
WHEN (SELECT ROUND(AVG(salary),2) FROM hr.employees AS E WHERE J.JOB_ID = E.JOB_ID) BETWEEN (5801) AND (7500) THEN "Pleno"
WHEN (SELECT ROUND(AVG(salary),2) FROM hr.employees AS E WHERE J.JOB_ID = E.JOB_ID) BETWEEN (7501) AND (10500) THEN "Sênior"
ELSE "CEO"
END AS "Senioridade"
FROM hr.jobs AS J
ORDER BY `Média Salarial`, job_title;
