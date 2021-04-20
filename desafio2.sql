select JOB_TITLE as Cargo,
case 
	when MAX_SALARY > 5000 and MAX_SALARY < 10001 then 'Baixo'
    when MAX_SALARY > 10000 and MAX_SALARY < 20001 then 'Médio'
    when MAX_SALARY > 20000 and MAX_SALARY < 30001 then 'Alto'
    else 'Altíssimo'
end as Nível from hr.jobs order by Cargo;
