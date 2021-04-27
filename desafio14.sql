select Country as País from customers
union
select Country from suppliers limit 5;
