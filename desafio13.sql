SELECT prods.productName AS `Produto`, prods.price AS `Preço`
FROM w3schools.products prods
INNER JOIN w3schools.order_details details
ON prods.productID = details.productId
WHERE details.quantity > 80
ORDER BY `Produto`;
