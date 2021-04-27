SELECT pd.ProductName AS `Produto`,
pd.Price AS `Preço` FROM w3schools.products AS `pd`
INNER JOIN w3schools.order_details AS `Od`
ON Pd.productId = Od.productid
WHERE Od.quantity > 80
ORDER BY `Produto`;
