SELECT (SELECT p.ProductName FROM w3schools.products AS p WHERE p.ProductID = o_d.ProductId) AS 'Produto', MIN(o_d.Quantity) AS 'Mínima', MAX(o_d.Quantity) AS 'Máxima', ROUND(AVG(o_d.Quantity), 2) AS 'Média' FROM w3schools.order_details AS o_d GROUP BY o_d.ProductId HAVING ROUND(AVG(o_d.Quantity), 2) > 20.00 ORDER BY ROUND(AVG(o_d.Quantity), 2) , (SELECT p.ProductName FROM w3schools.products AS p WHERE p.ProductID = o_d.ProductId);

-- https://stackoverflow.com/questions/34115174/error-related-to-only-full-group-by-when-executing-a-query-in-mysql
