SELECT 
(select JOB_TITLE from hr.jobs e where e.JOB_ID=j.JOB_ID) as 'Cargo',
round(avg(j.salary),2) as 'Média salarial',
case
when avg(j.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
when avg(j.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
when avg(j.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
when avg(j.salary) > 10500 THEN 'CEO'
end as 'Senioridade'
FROM
hr.employees j 
GROUP BY j.JOB_ID ORDER BY avg(j.salary) ,`Cargo`;
     
