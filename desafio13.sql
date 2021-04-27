select p.ProductName as Produto, p.Price as Preço from w3schools.products p 
inner join order_details od on p.ProductID = od.ProductID where od.Quantity > 80;
