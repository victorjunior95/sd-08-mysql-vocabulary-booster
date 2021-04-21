USE hr;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(
IN `email_funcionario` VARCHAR(50))
BEGIN
SELECT CONCAT(`FIRST_NAME`, ' ', `LAST_NAME`) AS `Nome completo`,
`DEPARTMENT_NAME` AS `Departamento`,
`JOB_TITLE` AS `Cargo`
FROM `job_history` AS JH
INNER JOIN `employees` AS E ON E.`EMPLOYEE_ID` = JH.`EMPLOYEE_ID`
INNER JOIN `departments` AS D ON D.`DEPARTMENT_ID` = JH.`DEPARTMENT_ID`
INNER JOIN `jobs` AS J ON J.`JOB_ID` = JH.`JOB_ID`
WHERE E.`EMAIL` = `email_funcionario`
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
