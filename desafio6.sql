SELECT 
  CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
Jobs.JOB_TITLE AS 'Cargo',
JH.START_DATE AS 'Data de início do cargo',
Departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS Employees
INNER JOIN
hr.job_history AS JH ON Employees.EMPLOYEE_ID = JH.EMPLOYEE_ID
INNER JOIN
hr.jobs AS Jobs ON JH.JOB_ID = Jobs.JOB_ID
INNER JOIN
hr.departments AS Departments ON JH.DEPARTMENT_ID = Departments.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
