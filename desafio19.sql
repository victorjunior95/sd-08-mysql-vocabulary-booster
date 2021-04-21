USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(`mes` INT, `ano` INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE `quantidade_funcionarios` INT;
SELECT COUNT(*) FROM `employees` 
WHERE `HIRE_DATE` LIKE (CONCAT(`ano`, '-%', `mes`, '-%'))  
INTO `quantidade_funcionarios`;
RETURN `quantidade_funcionarios`;
END $$

DELIMITER ;
