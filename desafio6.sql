SELECT CONCAT(FIRST_NAME, " ", LAST_NAME) AS `Nome completo`,
(
	SELECT j.JOB_TITLE
	FROM hr.jobs j
	WHERE j.JOB_ID = e.JOB_ID
) AS Cargo,
HIRE_DATE AS `Data de início do cargo`,
(
	SELECT d.DEPARTMENT_NAME
	FROM hr.departments d
	WHERE d.DEPARTMENT_ID = e.DEPARTMENT_ID
) AS Departamento
FROM hr.employees e
ORDER BY `Nome completo` DESC, Cargo;
