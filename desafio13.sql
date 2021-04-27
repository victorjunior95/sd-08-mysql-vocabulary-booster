-- 13 - Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80
SELECT t1.ProductName AS 'Produto', t1.Price AS 'Preço' 
FROM w3schools.products AS t1, w3schools.order_details AS t2
WHERE t2.Quantity > 80 AND 
 t1.ProductID = t2.ProductID
 ORDER BY 1;
