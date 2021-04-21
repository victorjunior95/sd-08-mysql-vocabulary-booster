SELECT 
    tb_cust.ContactName AS 'Nome de contato',
    tb_shp.ShipperName AS 'Empresa que fez o envio',
    tb_ord.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS tb_cust
        INNER JOIN
    w3schools.orders AS tb_ord ON tb_cust.CustomerID = tb_ord.CustomerID
        INNER JOIN
    w3schools.shippers AS tb_shp ON tb_ord.ShipperID = tb_shp.ShipperID
WHERE
    tb_shp.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY tb_cust.ContactName ASC , tb_shp.ShipperName ASC , tb_ord.OrderDate ASC;
