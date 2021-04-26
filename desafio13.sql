SELECT prod.ProductName AS 'Produto',
    prod.Price AS 'Preço'
FROM w3schools.products AS prod
    INNER JOIN w3schools.order_details AS OD ON prod.ProductID = OD.ProductID
WHERE OD.Quantity > 80
ORDER BY Produto;
