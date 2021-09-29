-- 10 - Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos
-- registrados acima de 20.00
-- 	Monte uma query que exiba 04 colunas:
-- 		a) A primeira deve possuir o alias "Produto" e exibir o nome do produto.
-- 		b) A segunda deve possuir o alias "Mínima" e exibir a quantidade mínima que já foi pedida desse
-- 		produto.
-- 		c) A terceira deve possuir o alias "Máxima" e exibir a quantidade máxima que já foi pedida desse
-- 		produto.
-- 		d) A quarta deve deve possuir o alias "Média" e exibir a média de quantidade nos pedidos deste
-- 		produto,
-- 		arredondada para duas casas decimais.
-- 	Os resultados devem estar ordenados pela média de quantidade nos pedidos em ordem crescente.
-- 	Em caso de empate na média, os resultados devem ser ordenados pelo nome do produto em ordem alfabética.
SELECT p.ProductName AS `Produto`, MIN(od.Quantity) AS `Mínima`,
MAX(od.Quantity) AS `Máxima`, ROUND(AVG(od.Quantity), 2) AS `Média`
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od ON p.ProductID = od.ProductID
GROUP BY p.ProductID
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
