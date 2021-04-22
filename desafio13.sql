-- 13 - Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse
-- produto maior que 80
-- 	Monte uma query que exiba 02 colunas:
-- 		a) A primeira deve possuir o alias "Produto" e exibir o nome do produto.
-- 		b) A segunda deve possuir o alias "Preço" e exibir o preço desse produto.
-- 	Os resultados devem estar ordenados pelo nome do produto em ordem alfabética.
SELECT p.ProductName AS `Produto`, p.Price AS `Preço`
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od ON p.ProductID = od.ProductID
AND od.Quantity > 80
ORDER BY `Produto`;
