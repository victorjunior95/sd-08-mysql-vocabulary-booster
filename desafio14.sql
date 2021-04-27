select Country as País from customers
union
select Country from suppliers
order by País limit 5;
