SELECT p.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity),2) AS 'Média'
FROM order_details od
INNER JOIN products p ON p.ProductID = od.ProductID
GROUP BY od.ProductID
HAVING AVG(od.Quantity) > 20
ORDER BY 4, 1;
