/* SELECT * FROM w3schools.order_details;
SELECT * FROM w3schools.products; */
SELECT
product.ProductName AS "Produto",
product.Price AS "Preço"
FROM w3schools.products AS product
INNER JOIN w3schools.order_details AS ordr
ON ordr.ProductID = product.ProductID
WHERE ordr.Quantity > 80
ORDER BY 1;
