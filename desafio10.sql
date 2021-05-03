SELECT ProductName AS Produto, 
MIN(Quantity) AS Mínima, 
MAX(Quantity) AS Máxima,
format(AVG(Quantity), 2) AS Média
FROM w3schools.order_details AS OD
INNER JOIN w3schools.products AS P
ON P.ProductID = OD.ProductID
GROUP BY ProductName
ORDER BY Média, Produto;
