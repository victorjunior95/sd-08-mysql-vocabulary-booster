SELECT products.ProductName as 'Produto', products.Price as 'Preço' FROM w3schools.order_details AS orderd INNER JOIN w3schools.products AS products ON orderd.ProductID = products.ProductID WHERE Quantity > 80 ORDER BY `Produto`;

SELECT
  products.ProductName as 'Produto',
  products.Price as 'Preço'
FROM w3schools.order_details AS orderd
INNER JOIN w3schools.products AS products
ON orderd.ProductID = products.ProductID
WHERE Quantity > 80
ORDER BY `Produto`;
