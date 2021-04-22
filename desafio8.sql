SELECT 
    contactname AS 'Nome de contato',
    shipperName AS 'Empresa que fez o envio',
    OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS C
        INNER JOIN
    w3schools.orders AS O ON C.CustomerID = O.CustomerID
        INNER JOIN
    w3schools.shippers AS S ON O.ShipperID = S.ShipperID
WHERE
    S.ShipperName = 'Speedy Express'
        OR S.ShipperName = 'United Package'
ORDER BY `Nome de contato` , S.ShipperName
