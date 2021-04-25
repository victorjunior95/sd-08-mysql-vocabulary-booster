-- 10 - Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00
-- SELECT * FROM w3schools.products;
SELECT p.ProductName AS 'Produto' , MIN(Quantity) as 'Mínima', MAX(Quantity) AS 'Máxima', ROUND(AVG(Quantity),2 ) AS 'Média' FROM w3schools.order_details AS o
INNER JOIN w3schools.products as p
ON p.ProductID = o.ProductID
GROUP BY o.ProductID
HAVING AVG(Quantity) > 20
ORDER BY 4,1;
