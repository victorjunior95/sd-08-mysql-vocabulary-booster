-- 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo
SELECT JOB_ID AS `Cargo`, ROUND(AVG(hr.employees.SALARY), 2) AS `Média salarial` ,
(CASE
	WHEN ROUND(AVG(hr.employees.SALARY), 2) < 5800 THEN "Júnior"
    WHEN ROUND(AVG(hr.employees.SALARY), 2) < 7500 THEN "Pleno"
    WHEN ROUND(AVG(hr.employees.SALARY), 2) < 10500 THEN "Sênior"
    ELSE "CEO"
END
) AS `Senioridade` FROM hr.employees
GROUP BY JOB_ID
ORDER BY `Média salarial`, `Cargo`  ;
