SET @media_salarial = ROUND(MAX_SALARY - MIN_SALARY, 2);
SELECT JOB_TITLE AS 'Cargo', @media_salarial AS 'Média Salarial',
  CASE
    WHEN @media_salarial >= 2000 AND @media_salarial <= 5800 THEN 'Júnior'
    WHEN @media_salarial >= 5801 AND @media_salarial <= 7500 THEN 'Pleno'
    WHEN @media_salarial >= 7501 AND @media_salarial <= 10500 THEN 'Sênior'
    ELSE 'CEO'
  END AS 'Senioridade'
FROM hr.jobs ORDER BY @media_salarial, JOB_TITLE;
