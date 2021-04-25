SELECT
P.ProductName AS 'Produto',
MIN(O.Quantity) AS 'Mínima',
MAX(O.Quantity) AS 'Máxima',
ROUND(AVG(O.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS O
INNER JOIN products AS P
ON O.ProductID = P.ProductID
GROUP BY P.ProductName
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
