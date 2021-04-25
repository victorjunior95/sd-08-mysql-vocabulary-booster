select JOB_TITLE as Cargo, 
case
when MAX_SALARY >= 5000 and MAX_SALARY <= 10000 then 'Baixo'
when MAX_SALARY >= 10001 and MAX_SALARY <= 20000 then 'Medio'
when MAX_SALARY >= 20001 and MAX_SALARY <= 30000 then 'Alto'
when MAX_SALARY > 30000 then 'Altíssimo'
else 'Salário não categorizado'
end as 'Nível'
from hr.jobs
order by 1;
