delimiter $$
create procedure exibir_historico_completo_por_funcionario(in email varchar(150))
begin
select concat(e.FIRST_NAME, ' ', e.LAST_NAME) as `Nome completo`, 
d.DEPARTMENT_NAME as `Departamento`, 
j.JOB_TITLE as `Cargo`
from hr.employees e inner join hr.job_history jh on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
inner join hr.departments d on d.DEPARTMENT_ID = jh.DEPARTMENT_ID
inner join hr.jobs j on j.JOB_ID = jh.JOB_ID
where e.EMAIL = email
order by `Departamento`, `Cargo`;
end $$
delimiter ;
