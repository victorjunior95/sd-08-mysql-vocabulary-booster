USE hr;

DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(email VARCHAR(40))
BEGIN
    SELECT CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) AS `Nome completo`,
    d.DEPARTMENT_NAME AS `Departamento`,
    j.JOB_TITLE AS `Cargo`
    FROM job_history AS jh
    INNER JOIN employees AS e
    ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
    INNER JOIN departments AS d
    ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
    INNER JOIN jobs AS j
    ON j.JOB_ID = jh.JOB_ID
    WHERE e.email = email
    ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
