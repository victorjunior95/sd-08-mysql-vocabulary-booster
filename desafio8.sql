SELECT 
    A.ContactName AS 'Nome de contato',
    C.ShipperName AS 'Empresa que fez o envio',
    B.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers A
        JOIN
    w3schools.orders B ON A.CustomerID = B.CustomerID
        JOIN
    w3schools.shippers C ON B.ShipperID = C.ShipperID
WHERE
    C.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY A.ContactName , C.ShipperName , B.OrderDate;
