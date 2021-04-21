USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (
  employeeEmail VARCHAR(25)
)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE result INT;
SELECT 
    COUNT(*)
FROM
    job_history AS jh
        INNER JOIN
    employees AS emp ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE
    EMAIL = employeeEmail INTO result;
  RETURN result;
END

$$ DELIMITER ;

-- SELECT hr.buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR'); OK!
