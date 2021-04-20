SELECT prod.ProductName AS 'Produto', MIN(orderDet.Quantity) AS 'Mínima',
MAX(orderDet.Quantity) AS 'Máxima', ROUND(AVG(orderDet.Quantity), 2) AS 'Média'
FROM w3schools.order_details orderDet
INNER JOIN w3schools.products prod
ON orderDet.ProductID = prod.ProductID
GROUP BY prod.ProductName
HAVING AVG(orderDet.Quantity) > 20.00
ORDER BY AVG(orderDet.Quantity) , prod.ProductName;
