delimiter $$
create procedure buscar_media_por_cargo(in cargo varchar(20))
begin
select round(avg(e.SALARY), 2) as `Média salarial` from hr.employees e 
inner join hr.jobs j on e.JOB_ID = j.JOB_ID where j.JOB_TITLE = cargo;
end $$
delimiter ;
