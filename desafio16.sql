CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
RETURN(
SELECT 
    COUNT(*) 
FROM
    hr.employees A
        JOIN
    hr.job_history B ON A.EMPLOYEE_ID = B.EMPLOYEE_ID
WHERE
    A.EMAIL = EMAIL
);
END

$$ DELIMITER ;
