    /* Adaptado do PR de Arnaelcio Gomes
  https://github.com/tryber/sd-08-mysql-vocabulary-booster/pull/54/files, 
  e com seu auxílio para compreenção. */
SELECT * FROM hr.job_history;DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qntDeEmpregos INT;
SELECT 
    COUNT(*)
FROM
    hr.job_history
WHERE
    EXISTS( SELECT 
            *
        FROM
            hr.employees
        WHERE
            hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
                AND hr.employees.EMAIL = email) INTO qntDeEmpregos;

RETURN qntDeEmpregos;
END 
$$
DELIMITER ;
