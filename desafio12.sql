select concat(e1.FIRST_NAME, ' ', e1.LAST_NAME) as `Nome completo funcionário 1`, e1.SALARY as `Salário funcionário 1`, 
e1.PHONE_NUMBER as `Telefone funcionário 1`, concat(e2.FIRST_NAME, ' ', e2.LAST_NAME) as `Nome completo funcionário 2`, 
e2.SALARY as `Salário funcionário 2`, e2.PHONE_NUMBER as `Telefone funcionário 2`
from hr.employees e1, hr.employees e2 
where e1.JOB_ID = e2.JOB_ID and concat(e1.FIRST_NAME, ' ', e1.LAST_NAME) <> concat(e2.FIRST_NAME, ' ', e2.LAST_NAME)
order by concat(e1.FIRST_NAME, ' ', e1.LAST_NAME), concat(e2.FIRST_NAME, ' ', e2.LAST_NAME);
