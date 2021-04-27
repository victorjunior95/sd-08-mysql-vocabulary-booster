delimiter $$
create function exibir_quantidade_pessoas_contratadas_por_mes_e_ano(`month` int, `year` int)
returns int reads sql data
begin
declare total int;
select count(*) from hr.employees
where month(HIRE_DATE) = `month` and year(HIRE_DATE) = `year` 
into total;
return total;
end $$
delimiter ;
