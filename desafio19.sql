-- 19 - Crie uma função chamada exibir_quantidade_pessoas_contratadas_por_mes_e_ano no banco de dados hr que, dados o mês e ano como parâmetros nessa ordem, retorna a quantidade de pessoas funcionárias que foram contratadas nesse mês e ano
-- Use o banco hr como referência
-- Crie uma função chamada exibir_quantidade_pessoas_contratadas_por_mes_e_ano no banco de dados hr que, dados o mês e ano como parâmetros nessa ordem, retorna a quantidade de pessoas funcionárias que foram contratadas nesse mês e ano. Confirme que sua função retorna o valor 14 ao ser chamada passando os números 6 e 1987 para mês e ano, respectivamente.
SELECT
products.ProductName 'Produto',
MIN(order_d.Quantity) AS 'Mínima',
MAX(order_d.Quantity) 'Máxima',
ROUND(AVG(order_d.Quantity), 2) 'Média'
FROM w3schools.order_details order_d
LEFT JOIN w3schools.products products
ON products.ProductID = order_d.ProductID
GROUP BY order_d.ProductID
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
