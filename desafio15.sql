DELIMITER $$

create procedure buscar_media_por_cargo(in cargo varchar(20))
BEGIN
select round(AVG(e.SALARY),2) as 'Salário' from hr.employees as e
inner join (SELECT * FROM hr.jobs) as j on j.JOB_ID = e.JOB_ID where j.JOB_TITLE = `cargo`
group by j.JOB_TITLE ;
END
$$ DELIMITER ;
-- CALL buscar_media_por_cargo('Programmer');
