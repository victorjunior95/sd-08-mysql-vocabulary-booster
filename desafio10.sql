SELECT tp.ProductName AS 'Produto',
MIN(o.Quantity) AS 'Mínima',
MAX(o.Quantity) AS 'Máxima',
ROUND(AVG(o.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS o
INNER JOIN w3schools.products AS tp ON o.ProductID = tp.ProductID
GROUP BY tp.ProductID
HAVING ROUND(AVG(o.Quantity), 2) > 20
ORDER BY ROUND(AVG(o.Quantity), 2), tp.ProductName;
