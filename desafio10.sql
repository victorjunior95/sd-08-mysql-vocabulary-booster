SELECT
  p.ProductName AS Produto,
  MIN(o.Quantity) AS Mínima,
  MAX(o.Quantity) AS Máxima,
  ROUND(AVG(o.Quantity), 2) AS Média
FROM order_details o
INNER JOIN products p
ON p.ProductID = o.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média, Produto;
