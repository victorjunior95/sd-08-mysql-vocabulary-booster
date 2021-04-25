/* Desafio10.SQL */

SELECT
tbP.ProductName 'Produto',
MIN(tbOD.Quantity) 'Mínima',
MAX(tbOD.Quantity) 'Máxima',
ROUND(AVG(tbOD.Quantity), 2) 'Média'
FROM w3schools.products tbP
INNER JOIN w3schools.order_details tbOD	
ON tbP.ProductID = tbOD.ProductID
GROUP BY tbP.ProductID
HAVING ROUND(AVG(tbOD.Quantity), 2) > 20
ORDER BY ROUND(AVG(tbOD.Quantity), 2), tbP.ProductName;
