/* -- Desafio13.SQL */

SELECT
tbP.ProductName 'Produto',
tbP.Price 'Preço'
FROM w3schools.products tbP
INNER JOIN w3schools.order_details tbOD
ON tbP.ProductID = tbOD.ProductID
WHERE tbOD.Quantity > 80
ORDER BY tbP.ProductName;
