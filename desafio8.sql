USE w3schools;
SELECT 
    c.ContactName AS `Nome de Contato`,
    sh.ShipperName AS `Empresa que fez o envio`,
    o.OrderDate AS `Data do pedido`
FROM
    `customers` AS c
        INNER JOIN
    `orders` AS o ON c.CustomerID = o.CustomerID
        INNER JOIN
    shippers AS sh ON o.ShipperID = sh.ShipperID
WHERE
    sh.ShipperName = 'Speedy Express'
        OR 'United Package'
ORDER BY `Nome de Contato` , `Empresa que fez o envio` , `Data do pedido`
;
