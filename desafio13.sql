SELECT PRODUCTS.ProductName AS `Produto`, PRODUCTS.Price AS `Preço`
FROM w3schools.order_details AS `ORDER_DETAIL`
INNER JOIN w3schools.products AS `PRODUCTS`
ON ORDER_DETAIL.ProductID = PRODUCTS.ProductID
WHERE Quantity > 80
ORDER BY `Produto`;
