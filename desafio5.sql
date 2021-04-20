SELECT 
    A.JOB_TITLE AS 'Cargo',
    SUM(A.MAX_SALARY - A.MIN_SALARY) AS 'Variação Salarial',
    ROUND(AVG(A.MIN_SALARY) / 12, 2) AS 'Média mínima mensal',
    ROUND(AVG(A.MAX_SALARY) / 12, 2) AS 'Média máxima mensal'
FROM
    hr.jobs A
GROUP BY A.JOB_TITLE
ORDER BY SUM(A.MAX_SALARY - A.MIN_SALARY) , A.JOB_TITLE;
