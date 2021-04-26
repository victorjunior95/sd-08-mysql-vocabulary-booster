SELECT ProductName AS 'Produto',
    MIN(Quantity) AS 'Mínima',
    MAX(Quantity) AS 'Máxima',
    ROUND(AVG(Quantity), 2) AS 'Média'
FROM w3schools.products AS prods
    INNER JOIN w3schools.order_details AS detls ON prods.ProductID = detls.ProductID
GROUP BY prods.ProductID
HAVING `Média` > 20.00
ORDER BY `Média`,
    `Produto`;
