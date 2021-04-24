SELECT
    tb_prd.ProductName, tb_prd.Price
FROM
    w3schools.products AS tb_prd
        INNER JOIN
    w3schools.order_details AS tb_ord ON tb_prd.ProductID = tb_ord.ProductID
WHERE
    tb_ord.Quantity > 80
ORDER BY tb_prd.ProductName ASC;
