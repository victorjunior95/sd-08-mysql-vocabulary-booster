/* usei este link para me ajudar a calcular a diferença entre as datas: https://zerobugs.com.br/ver-post/mysql-calcular-quantidade-de-dias-meses-ou-anos-entre-duas-datas/ */
select concat(e.FIRST_NAME, ' ', e.LAST_NAME) as `Nome completo`, 
concat(day(jb.START_DATE), '/', month(jb.START_DATE), '/', year(jb.START_DATE)) as `Data de início`,
concat(day(jb.END_DATE), '/', month(jb.END_DATE), '/', year(jb.END_DATE)) as `Data de rescisão`,
timestampdiff(year, jb.START_DATE, jb.END_DATE) as `Anos trabalhados`
from hr.employees e inner join hr.job_history jb on e.EMPLOYEE_ID = jb.EMPLOYEE_ID
order by `Nome completo`, `Anos trabalhados`;
