SELECT 
    products.ProductName AS 'Produto',
    MIN(order_details.Quantity) AS 'Mínima',
    MAX(order_details.Quantity) AS 'Máxima',
    ROUND(AVG(order_details.Quantity), 2) AS 'Média'
    /* https://www.devmedia.com.br/sql-funcoes-de-agregacao/38463 */
FROM
    w3schools.order_details
        INNER JOIN
    products ON products.ProductID = order_details.ProductID
GROUP BY order_details.ProductID
HAVING `Média` > 20
  /* https://www.w3schools.com/sql/sql_having.asp */
ORDER BY `Média` , `Produto`;
    /* Adaptado do PR de Arnaelcio Gomes
  https://github.com/tryber/sd-08-mysql-vocabulary-booster/pull/54/files */
  