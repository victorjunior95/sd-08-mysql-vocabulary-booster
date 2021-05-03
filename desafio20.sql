-- 20 - Toda pessoa funcionária no banco hr possui um histórico completo de cargos. Logo, crie uma procedure chamada exibir_historico_completo_por_funcionario que, dado o e-mail de uma pessoa funcionária, retorna todos os cargos em seu histórico
-- Use o banco hr como referência
-- Toda pessoa funcionária no banco hr possui um histórico completo de cargos. Logo, crie uma procedure chamada exibir_historico_completo_por_funcionario que, dado o e-mail de uma pessoa funcionária, retorna todos os cargos em seu histórico. Sua procedure deve retornar três colunas:
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Departamento" e exibir o departamento que a pessoa já fez parte.
-- A terceira coluna deve possuir o alias "Cargo" e exibir cargo que a pessoa já ocupou.
-- Os resultados devem estar ordenados pelo nome do departamento em ordem alfabética. Em caso de empate no nome do departamento, ordene os resultados pelo nome do cargo em ordem alfabética.
-- Confirme a execução correta da procedure, chamando-a e passando o email "NKOCHHAR":
-- CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
-- Chamando-a dessa forma, sua procedure deve mostrar que a pessoa funcionária Neena Kochhar teve dois cargos em seu histórico: um como Accounting Manager no departamento Accounting e o outro como Public Accountant no departamento Accounting, nessa ordem.
USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employeeEmail TEXT)

BEGIN
SELECT
CONCAT(emp.FIRST_NAME, ' ', LAST_NAME) 'Nome completo',
dpt.DEPARTMENT_NAME 'Departamento',
jobs.JOB_TITLE 'Cargo'
FROM job_history job_h
LEFT JOIN hr.employees emp
ON emp.EMPLOYEE_ID = job_h.EMPLOYEE_ID
LEFT JOIN departments dpt
ON dpt.DEPARTMENT_ID = job_h.DEPARTMENT_ID
LEFT JOIN jobs jobs
ON jobs.JOB_ID = job_h.JOB_ID
WHERE emp.EMAIL = employeeEmail
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
