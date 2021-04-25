SELECT p.productname AS Produto, p.price as Preço
FROM w3schools.products p
INNER JOIN w3schools.order_details od ON od.productid = p.productid
WHERE od.quantity > 80
ORDER BY Produto;

