SELECT P.ProductName AS Produto,
MIN(O.Quantity) AS Mínima,
MAX(O.Quantity) AS Máxima,
(SELECT ROUND(AVG(O.Quantity),2) FROM w3schools.order_details AS O
WHERE O.ProductID = P.ProductID) AS Média
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS O
ON O.ProductID = P.ProductID
WHERE (SELECT ROUND(AVG(O.Quantity),2) FROM w3schools.order_details AS O
WHERE O.ProductID = P.ProductID) > 20
GROUP BY P.ProductName
ORDER BY Média, Produto;

-- SELECT P.ProductName AS Produto,
-- MIN(O.Quantity) AS Mínima,
-- MAX(O.Quantity) AS Máxima,

-- ROUND(AVG(O.Quantity),2) AS "Média"
-- FROM w3schools.products AS P
-- INNER JOIN w3schools.order_details AS O
-- ON O.ProductID = P.ProductID
-- GROUP BY P.ProductName
-- ORDER BY Média, Produto;
