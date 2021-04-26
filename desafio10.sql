SELECT products.ProductName AS 'Produto', MIN(order.Quantity) AS 'Mínima', MAX(order.Quantity) AS 'Máxima', ROUND(AVG(OD.Quantity), 2) AS 'Média' FROM w3schools.order_details AS order INNER JOIN w3schools.products AS products ON order.ProductID = products.ProductID GROUP BY order.ProductID HAVING `Média` > 20 ORDER BY `Média`, `Produto`;

-- SELECT
--   products.ProductName AS 'Produto',
--   MIN(order.Quantity) AS 'Mínima',
--   MAX(order.Quantity) AS 'Máxima',
--   ROUND(AVG(OD.Quantity), 2) AS 'Média'
-- FROM w3schools.order_details AS order
-- INNER JOIN w3schools.products AS products
-- ON order.ProductID = products.ProductID
-- GROUP BY order.ProductID
-- HAVING `Média` > 20
-- ORDER BY `Média`, `Produto`;
