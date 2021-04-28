/*Stored Procedure é um bloco de código PL/SQL armazenado no servidor, que não retorna valor.
 As Stored Procedures são passivas, ou seja, alguma aplicação precisa solicitar sua execução.

Function é um bloco PL/SQL que retorna valor.
 Assim como a stored procedure, uma function precisa ser solicitada por alguma aplicação.

Triggers também são procedimentos PL/SQL armazenados.
 A diferença é que triggers são ativas, ou seja,
 são acionadas automaticamente a partir de um evento que representa uma ação sobre a tabela. 
 Esses eventos estão relacionados a comandos insert, update ou delete. 
 Por exemplo, podemos associar uma trigger ao evento insert de uma tabela.
  Sempre que um registro for inserido nesta tabela, o código da trigger será executado, automaticamente.
   Uma trigger pode chamar uma stored procedure, que por sua vez pode chamar outra stored procedure.
   fonte :
   https://www.devmedia.com.br/stored-procedures-e-triggers-no-oracle-artigo-sql-magazine-03/7629 */

SELECT countries.COUNTRY_NAME AS 'País',
IF (regions.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.regions 
INNER JOIN hr.countries
ON regions.REGION_ID = countries.REGION_ID
ORDER BY countries.COUNTRY_NAME;
