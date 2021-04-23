select c.CustomerName as 'Nome de contato', s.ShipperName as 'Empresa que fez o envio',
o.OrderDate as 'Data do pedido' from w3schools.customers as c
inner join w3schools.orders as o on o.ShipperID = s.ShipperID 
inner join w3schools.shippers as s on o.ShipperID = s.ShipperID 
;





select  c.CONTACT_NAME as 'Nome de contato', j.JOB_TITLE as 'Cargo',
h.START_DATE as 'Data de início do cargo', dep.DEPARTMENT_NAME AS 'Departamento'
from hr.employees as e
inner join hr.job_history as h on h.EMPLOYEE_ID = e.EMPLOYEE_ID
inner join hr.jobs as j on h.JOB_ID =j.JOB_ID
inner join hr.departments as dep on dep.DEPARTMENT_ID = h.DEPARTMENT_ID order by `Nome completo` desc, `Cargo` asc;


A segunda deve possuir o alias "" e exibir 
o nome da empresa que efetuou o envio do pedido.

A terceira deve possuir o alias "" e exibir a 
data que o pedido foi feito.

