SELECT 	
    pdts.ProductName AS "Produto",
    MIN(ordd.Quantity) AS "Mínima",
    MAX(ordd.Quantity) AS "Máxíma",
    ROUND(AVG(ordd.Quantity), 2) AS "Média"
FROM
    w3schools.products AS pdts
        INNER JOIN
    w3schools.order_details AS ordd
WHERE
    pdts.ProductID = ordd.ProductID
GROUP BY `Produto`
HAVING `Média` > 20.00	
ORDER BY `Média` , `Produto`;
