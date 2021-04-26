SELECT Sub.ProductName AS Produto, 
Sub.Mínima,
Sub.Máxima,
Sub.Média
FROM(
SELECT p.ProductID, p.ProductName,
MAX(od.Quantity) AS Máxima,
MIN(od.Quantity) AS Mínima,
ROUND(AVG(od.Quantity),2) AS Média
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON p.ProductID = od.ProductID
GROUP BY p.ProductID) AS Sub
WHERE Média > 20
ORDER BY 4,1;
