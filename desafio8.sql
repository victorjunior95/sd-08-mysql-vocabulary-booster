SELECT 
    C.ContactName AS 'Nome de Contato',
    S.ShipperName AS 'Empresa que fez o envio',
    O.OrderDate AS 'Data do pedido'
FROM
    w3schools.orders O
        INNER JOIN
    w3schools.customers C ON O.CustomerID = C.CustomerID
        INNER JOIN
    w3schools.shippers S ON O.ShipperID = S.ShipperID
WHERE
    S.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY 1, 2, 3;
