/* SELECT * FROM w3schools.order_details;
SELECT * FROM w3schools.products; */
-- Ainda acho mais fácil com o INNER JOIN
SELECT
product.ProductName AS "Produto",
product.Price AS "Preço"
FROM w3schools.products AS product
INNER JOIN w3schools.order_details AS ordr
ON ordr.ProductID = product.ProductID
WHERE ordr.Quantity > 80
ORDER BY 1;

/* SELECT ProductName AS "Produto", Price AS "Preço" FROM w3schools.products AS product
WHERE EXISTS (
SELECT * FROM w3schools.order_details AS ordr
WHERE product.ProductID = ordr.ProductID
HAVING ordr.Quantity > 80
)
ORDER BY 1; */

/* SELECT ProductName AS "Produto", Price AS "Preço" FROM w3schools.products AS product
WHERE ProductID IN (
  SELECT ProductID FROM w3schools.order_details
  GROUP BY ProductID, Quantity
  HAVING Quantity > 80
)
ORDER BY 1;
 */
