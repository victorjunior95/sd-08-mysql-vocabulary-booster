SELECT PRO.productname AS 'Produto',
ORDD.Mínima,
ORDD.Máxima,
ROUND(`Média`, 2) AS `Média`
FROM (SELECT ProductID,
MIN(Quantity) AS 'Mínima',
MAX(Quantity) AS 'Máxima',
AVG(Quantity) AS `Média`
FROM w3schools.order_details GROUP BY ProductID) AS ORDD
INNER JOIN w3schools.products AS PRO ON ORDD.ProductID = PRO.ProductID
WHERE `Média` > 20
ORDER BY `Média`, `Produto`;
