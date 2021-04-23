SELECT c.job_title AS 'Cargo', f.`Média` AS 'Média salarial',
CASE
WHEN f.`Média` <= 5800 THEN 'Júnior'
WHEN f.`Média` <= 7500 THEN 'Pleno'
WHEN f.`Média` <= 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs c
INNER JOIN (
SELECT job_id, ROUND(AVG(salary), 2) AS 'Média'
FROM hr.employees
GROUP BY job_id
) f ON c.job_id = f.job_id
ORDER BY f.`Média`, c.job_title;

