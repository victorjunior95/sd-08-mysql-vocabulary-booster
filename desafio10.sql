SELECT 
a.ProductName AS 'Produto',
b.`minimo` AS 'Mínima',
c.`maximo` AS 'Máxima',
d.`media` AS 'Média'
FROM w3schools.products a
INNER JOIN 
(SELECT ProductID, MIN(Quantity) AS 'minimo'
FROM w3schools.order_details 
GROUP BY ProductID) b ON a.ProductID = b.ProductID
INNER JOIN 
(SELECT ProductID, MAX(Quantity) AS 'maximo'
FROM w3schools.order_details 
GROUP BY ProductID) c ON a.ProductID = c.ProductID
INNER JOIN
(SELECT ProductID, ROUND(AVG(Quantity), 2) AS 'media' 
FROM w3schools.order_details 
GROUP BY ProductID) d ON a.ProductID = d.ProductID
WHERE d.`media` > 20
ORDER BY d.`media`, a.ProductName;
