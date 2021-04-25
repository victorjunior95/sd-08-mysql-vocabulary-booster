SELECT cliente.contactName AS 'Nome',
cliente.country AS 'País',
pessoaPais.quantidade -1 AS 'Número de compatriotas'
FROM w3schools.customers AS cliente
INNER JOIN (SELECT pessoa.country, COUNT(pessoa.country) as quantidade
FROM w3schools.customers as pessoa
GROUP BY pessoa.country) AS pessoaPais ON cliente.country = pessoaPais.country
WHERE pessoaPais.quantidade > 1
ORDER BY `Nome`;
