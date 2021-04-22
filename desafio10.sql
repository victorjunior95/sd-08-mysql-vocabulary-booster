SELECT
p.productname AS Produto,
MIN(od.quantity) AS Mínima,
MAX(od.quantity) AS Máxima,
ROUND(AVG(od.quantity), 2) AS Média
FROM w3schools.products p
INNER JOIN w3schools.order_details od ON od.productid = p.productid
GROUP BY p.productid
HAVING Média > 20.00
ORDER BY Média, Produto;
