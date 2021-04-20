SELECT 
    hrj.JOB_TITLE AS 'Cargo', hrj.MAX_SALARY AS 'Nível'
FROM
    hr.jobs AS hrj
ORDER BY Cargo;
