DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN NOME_CARGO VARCHAR(100))
BEGIN
SELECT
    ROUND(AVG(A.SALARY), 2) AS 'Média salarial'
FROM
    hr.employees A
        JOIN
    hr.jobs B ON A.JOB_ID = B.JOB_ID
WHERE
    B.JOB_TITLE = NOME_CARGO;
END

$$ DELIMITER ;
