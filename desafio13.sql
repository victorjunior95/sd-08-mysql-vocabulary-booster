SELECT PRODUCTS.ProductName as "Produto", PRODUCTS.Price AS "Price"
FROM w3schools.products AS PRODUCTS
INNER JOIN w3schools.order_details AS ORDER_DETAILS
ON PRODUCTS.ProductID = ORDER_DETAILS.ProductID
WHERE ORDER_DETAILS.Quantity > 80
ORDER BY PRODUCTS.ProductName;
