    /*
     Adaptado do PR de Ana Karine
     https://github.com/tryber/sd-08-mysql-vocabulary-booster/pull/104/files 
 */
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(20))
BEGIN
SELECT 
    CONCAT(employees.first_name, ' ', employees.last_name) AS 'Nome completo',
    departments.department_name AS 'Departamento',
    jobs.job_title AS 'Cargo'
FROM
    hr.job_history
        INNER JOIN
    hr.employees ON employees.employee_id = job_history.employee_id
        INNER JOIN
    hr.jobs ON jobs.job_id = job_history.job_id
        INNER JOIN
    hr.departments ON departments.department_id = job_history.department_id
WHERE
    employees.email = email
ORDER BY `Departamento`, `Cargo`;
END
$$
DELIMITER ;
