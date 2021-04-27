/* usei este link para me ajudar a calcular a diferença entre as datas: https://www.w3schools.com/sql/func_mysql_datediff.asp */
select concat(e.FIRST_NAME, ' ', e.LAST_NAME) as `Nome completo`, 
concat(if(day(jh.START_DATE) <= 9, concat('0', day(jh.START_DATE)), day(jh.START_DATE)), '/',
if(month(jh.START_DATE) <= 9, concat('0', month(jh.START_DATE)), month(jh.START_DATE)), '/',
year(jh.START_DATE)) as `Data de início`,
concat(if(day(jh.END_DATE) <= 9, concat('0', day(jh.END_DATE)), day(jh.END_DATE)), '/',
if(month(jh.END_DATE) <= 9, concat('0', month(jh.END_DATE)), month(jh.END_DATE)), '/',
year(jh.END_DATE)) as `Data de rescisão`,
round(datediff(jh.END_DATE, jh.START_DATE) / 365, 2) as `Anos trabalhados`
from hr.employees e inner join hr.job_history jh on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
order by `Nome completo`, `Anos trabalhados`;
