DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
D.DEPARTMENT_NAME AS `Departamento`,
J.JOB_TITLE AS `Cargo`
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.jobs AS J
ON J.JOB_ID = JH.JOB_ID
INNER JOIN hr.departments AS D
ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
WHERE E.EMAIL = email
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
