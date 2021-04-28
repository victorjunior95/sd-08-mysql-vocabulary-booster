SELECT
    A.ContactName AS 'Nome',
    A.Country AS 'País',
    COUNT(*) AS 'Número de compatriotas'
FROM
    w3schools.customers AS A,
    w3schools.customers AS B
WHERE
    A.Country = B.Country
        AND A.CustomerID <> B.CustomerID
GROUP BY A.ContactName , A.Country
    /* Adaptado do PR de Arnaelcio Gomes
  https://github.com/tryber/sd-08-mysql-vocabulary-booster/pull/54/files */
ORDER BY `Nome`;
