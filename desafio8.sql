SELECT 
    c.ContactName AS `Nome de contato`,
    IF(o.ShipperID = 1,
        'Speedy Express',
        'United Package') AS `Empresa que fez o envio`,
    o.OrderDate AS `Data do pedido`
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.customers AS c ON c.CustomerID = o.CustomerID
WHERE
    o.ShipperID IN (1 , 2)
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
