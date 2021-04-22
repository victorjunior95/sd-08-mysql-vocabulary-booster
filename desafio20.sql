DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN EMAIL VARCHAR(100))
BEGIN
SELECT 
	CONCAT(A.First_Name, ' ', A.Last_Name) AS 'Nome completo',
    D.DEPARTMENT_NAME AS 'Departamento',
    C.JOB_TITLE AS 'Cargo'
FROM hr.employees A
JOIN hr.job_history B ON A.Employee_ID = B.Employee_ID
JOIN hr.jobs C ON B.JOB_ID = C.JOB_ID
JOIN hr.departments D ON B.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE A.EMAIL = EMAIL
ORDER BY D.DEPARTMENT_NAME, C.JOB_TITLE;
END

$$ DELIMITER ;
