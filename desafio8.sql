SELECT ContactName AS 'Nome de contato',
    ships.ShipperName As 'Empresa que fez o envio',
    orders.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS custs
    INNER JOIN w3schools.orders AS orders ON orders.CustomerID = custs.CustomerID
    INNER JOIN w3schools.shippers AS ships ON orders.ShipperID = ships.ShipperID
    AND (
        ships.ShipperName = 'Speedy Express'
        OR ships.ShipperName = 'United Package'
    )
ORDER BY `Nome de contato`,
    `Empresa que fez o envio`,
    `Data do pedido`;
