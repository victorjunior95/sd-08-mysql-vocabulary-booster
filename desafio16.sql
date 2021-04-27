delimiter $$
create function buscar_quantidade_de_empregos_por_funcionario(email varchar(150))
returns int reads sql data
begin
declare total_jobs int;
select count(jb.EMPLOYEE_ID) from hr.job_history jb inner join hr.employees e on jb.EMPLOYEE_ID = e.EMPLOYEE_ID
where e.EMAIL = email into total_jobs;
return total_jobs;
end $$
delimiter ;
