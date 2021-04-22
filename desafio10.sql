SELECT prod.productname AS Produto,
MIN(ord.quantity) AS Mínima,
MAX(ord.quantity) AS Máxima,
ROUND(AVG(ord.quantity), 2) AS Média
FROM w3schools.products prod
INNER JOIN w3schools.order_details ord
ON ord.productid = prod.productid
GROUP BY prod.productid
HAVING Média > 20.00
ORDER BY ord.quantity, prod.productname;
