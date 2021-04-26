CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN this_email VARCHAR(30)) BEGIN
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    D.DEPARTMENT_NAME AS 'Departamento',
    J.JOB_TITLE AS 'Cargo'
FROM hr.job_history AS JH
    INNER JOIN employees AS E ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
    INNER JOIN departments AS D ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
    INNER JOIN jobs AS J ON JH.JOB_ID = J.JOB_ID
WHERE EMAIL = this_email
ORDER BY `Departamento`,
    `Cargo`;
END $$ DELIMITER;
