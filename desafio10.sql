SELECT p.ProductName AS 'Produto', MIN(od.QUANTITY) AS 'Mínima', MAX(od.QUANTITY) AS 'Máxima', ROUND(AVG(od.QUANTITY), 2) AS 'Média'
FROM w3schools.products p
INNER JOIN w3schools.order_details od
ON p.ProductID = od.ProductID
GROUP BY p.ProductName
HAVING ROUND(AVG(od.QUANTITY), 2) > 20
ORDER BY ROUND(AVG(od.QUANTITY), 2), p.ProductName;
