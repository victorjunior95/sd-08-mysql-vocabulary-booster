use hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailparam varchar(50))
RETURNS varchar(50) READS SQL DATA
BEGIN

SELECT COUNT(JOH.EMPLOYEE_ID) AS 'total_empregos:' FROM hr.job_history AS JOH
INNER JOIN (SELECT EMP.EMPLOYEE_ID FROM hr.employees AS EMP
WHERE EMP.EMAIL = 'NKOCHHAR') AS IDRETORNADO
group by JOH.EMPLOYEE_ID HAVING ;
END
$$ DELIMITER ;
