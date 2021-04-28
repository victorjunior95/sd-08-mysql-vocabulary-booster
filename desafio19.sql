    /*
     Retirado do PR de Ana Karine
     https://github.com/tryber/sd-08-mysql-vocabulary-booster/pull/104/files 
 */
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(
  mes VARCHAR(2), 
  ano VARCHAR(4)
) RETURNS INT READS SQL DATA BEGIN DECLARE quantidade_funcionarios_contratados INT;
SELECT 
  COUNT(hire_date) 
FROM 
  hr.employees 
WHERE 
  (
    MONTH(HIRE_DATE) = mes 
    AND YEAR(HIRE_DATE)) = ano
  ) INTO quantidade_funcionarios_contratados;
RETURN quantidade_funcionarios_contratados;
END $$
DELIMITER ;
