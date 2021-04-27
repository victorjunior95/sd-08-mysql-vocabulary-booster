SELECT 
    cus.contactName AS 'Nome de contato',
    shi.shipperName AS 'Empresa que fez o envio',
    ord.orderDate AS 'Data do pedido'
FROM
    w3schools.orders AS ord
        INNER JOIN
    w3schools.customers AS cus ON ord.customerID = cus.customerID
        INNER JOIN
    w3schools.shippers AS shi ON ord.shipperID = shi.shipperID
WHERE
    shi.shipperName = 'Speedy Express'
        OR shi.shipperName = 'United Package' 
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
