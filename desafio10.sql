SELECT product.ProductName AS 'Produto',
MIN(odetail.Quantity) AS 'Mínima',
MAX(odetail.Quantity) AS 'Máxima',
CAST(AVG(odetail.Quantity) AS DECIMAL(10,2)) AS 'Média'
FROM w3schools.products product
INNER JOIN w3schools.order_details odetail
ON product.ProductID = odetail.ProductID
GROUP BY product.ProductName
HAVING `Média` > 20.00
ORDER BY `Média`, product.ProductName;
