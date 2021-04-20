SELECT
CONCAT(hre.FIRST_NAME, ' ', hre.LAST_NAME) AS 'Nome completo',
hrj.JOB_TITLE AS 'Cargo',
hrjh.START_DATE AS 'Data de início do cargo',
hrd.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS hre
INNER JOIN hr.job_history AS hrjh
ON hre.EMPLOYEE_ID = hrjh.EMPLOYEE_ID
INNER JOIN hr.jobs AS hrj
ON hrjh.JOB_ID = hrj.JOB_ID
INNER JOIN hr.departments AS hrd
ON hrjh.DEPARTMENT_ID = hrd.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
