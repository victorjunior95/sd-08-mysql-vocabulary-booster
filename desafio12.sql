SELECT concat(p1.FIRST_NAME ,' ', p1.LAST_NAME )as 'Nome completo funcionário 1',
p1.SALARY as'Salário funcionário 1',
p1.PHONE_NUMBER as 'Telefone funcionário 1',
concat(p2.FIRST_NAME ,' ', p2.LAST_NAME )as 'Nome completo funcionário 2',
p2.SALARY as'Salário funcionário 2',
p2.PHONE_NUMBER as 'Telefone funcionário 2'
FROM hr.employees as p1
inner join (select * from hr.employees ) as p2 on p1.JOB_ID = p2.JOB_ID
having (`Nome completo funcionário 1` <> `Nome completo funcionário 2`)
order by `Nome completo funcionário 1`, `Nome completo funcionário 2`;
