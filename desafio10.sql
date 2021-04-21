SELECT P.ProductName, M.Mínima, M.Máxima, ROUND(`Média`, 2) AS `Média` FROM (
SELECT ProductID, MIN(Quantity) AS 'Mínima', MAX(Quantity) AS 'Máxima',
AVG(Quantity) AS `Média` FROM w3schools.order_details GROUP BY ProductID
) AS M
INNER JOIN w3schools.products AS P ON P.ProductID = M.ProductID
WHERE `Média` > 20 ORDER BY `Média`, P.ProductName;
