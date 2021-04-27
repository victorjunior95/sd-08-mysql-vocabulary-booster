SELECT 
    pro.productName AS 'Produto', pro.price AS 'Preço'
FROM
    w3schools.products AS pro
        INNER JOIN
    w3schools.order_details AS ord ON ord.productID = pro.productID
WHERE
    ord.quantity > 80
ORDER BY `Produto`;