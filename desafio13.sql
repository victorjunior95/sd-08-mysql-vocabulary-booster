SELECT ProductName AS Produto, Price AS Preço FROM w3schools.products
WHERE ProductId IN
(SELECT ProductId FROM w3schools.order_details
GROUP BY ProductId, Quantity HAVING Quantity > 80)
ORDER BY 1;
