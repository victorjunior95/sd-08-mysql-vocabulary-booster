select p.ProductName as 'Produto', p.Price as 'Preço'  from w3schools.products as p
inner join (SELECT * FROM w3schools.order_details
where Quantity >80) as l on p.ProductID = l.ProductID
order by Produto;
