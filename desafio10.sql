SELECT PRO.productname AS 'Produto',
MIN(ORDD.quantity) AS 'Mínima',
MAX(ORDD.quantity) AS 'Máxima',
ROUND(AVG(ORDD.quantity),2) AS 'Média'
FROM w3schools.order_details AS ORDD
INNER JOIN w3schools.products AS PRO ON ORDD.ProductID = PRO.ProductID
GROUP BY PRO.productname
HAVING AVG(ORDD.quantity) > 20
ORDER BY `Média` ASC, `Produto` ASC;
