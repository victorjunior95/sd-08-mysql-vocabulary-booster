DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT 
    ROUND(SUM(employees.SALARY) / COUNT(employees.JOB_ID), 2) AS 'Média salarial'
FROM
    employees 
        INNER JOIN
    jobs ON  jobs.JOB_ID = employees.JOB_ID 
WHERE jobs.JOB_TITLE  = cargo ;
END
$$
DELIMITER ;

    /* Adaptado do PR de Arnaelcio Gomes
  https://github.com/tryber/sd-08-mysql-vocabulary-booster/pull/54/files, 
  e com seu auxílio para compreenção. */
  