SELECT 
  products.ProductName AS 'Produto', 
  products.Price AS 'Preço' 
FROM 
  w3schools.order_details 
  INNER JOIN products ON products.ProductID = order_details.ProductID 
GROUP BY 
  order_details.Quantity 
HAVING 
  order_details.Quantity > 80 
ORDER BY 
  Produto;
  