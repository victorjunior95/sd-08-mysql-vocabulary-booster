SELECT
    tb_prod.productName AS 'Produto',
    MIN(tb_det.Quantity) AS 'Mínima',
    MAX(tb_det.Quantity) AS 'Máxima',
    ROUND(AVG(tb_det.Quantity), 2) AS 'Média'
FROM
    w3schools.products AS tb_prod
        INNER JOIN
    w3schools.order_details AS tb_det ON tb_prod.ProductID = tb_det.ProductID
GROUP BY tb_prod.productName
HAVING Média > 20
ORDER BY ROUND(AVG(tb_det.Quantity), 2) ASC , tb_prod.productName ASC;
