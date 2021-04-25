DELIMITER @|
CREATE PROCEDURE buscar_media_por_cargo(IN jobTitle VARCHAR(20))
BEGIN
-- instrução da stored procedure
SELECT 
    ROUND(AVG(E.salary), 2) AS `Média salarial`
FROM
    hr.employees AS E
        INNER JOIN
    hr.jobs AS J ON J.job_id = E.job_id
WHERE
    J.job_title = jobTitle;
END
@| DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
