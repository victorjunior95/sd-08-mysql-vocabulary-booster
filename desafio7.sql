select ucase(concat(employees.FIRST_NAME, ' ', employees.LAST_NAME)) as `Nome completo`,
history.START_DATE as `Data de início`,
employees.SALARY as `Salário` from hr.employees employees 
inner join hr.job_history as `history` on employees.EMPLOYEE_ID = history.EMPLOYEE_ID
where month(history.START_DATE) in (01, 02, 03)
order by concat(employees.FIRST_NAME, ' ', employees.LAST_NAME), `Data de início`;
