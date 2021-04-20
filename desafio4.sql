SET @media_salarial = ROUND(MAX_SALARY - MIN_SALARY, 2);
SELECT JOB_TITLE AS 'Cargo', @media_salarial AS 'Média Salarial',
  CASE
    WHEN @media_salarial >= 2000 AND <= 5800 THEN 'Júnior'
    WHEN @media_salarial >= 2000 AND <= 5800 THEN 'Pleno'
    WHEN @media_salarial >= 2000 AND <= 5800 THEN 'Sênior'
    ELSE 'CEO'
  END AS 'Senioridade'
FROM hr.jobs ORDER BY ASC @media_salarial, JOB_TITLE;
