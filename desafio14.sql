SELECT 
    Country AS 'País'
FROM
    w3schools.customers 
UNION 
SELECT 
    Country
FROM
    w3schools.suppliers
ORDER BY País
LIMIT 5;

/* O operador UNION, por default, executa o equivalente a um SELECT DISTINCT no result set final.
 Em outras palavras, ele combina o resultado de execução das duas queries e então executa um SELECT DISTINCT 
 a fim de eliminar as linhas duplicadas. Este processo é executado mesmo que não hajam registros duplicados. 
 https://www.devmedia.com.br/sql-utilizando-o-operador-union-e-union-all/37457 */
      /* Adaptado do PR de Arnaelcio Gomes
  https://github.com/tryber/sd-08-mysql-vocabulary-booster/pull/54/files */
