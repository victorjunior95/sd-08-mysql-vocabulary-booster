SELECT
    hr_j.JOB_TITLE AS 'Cargo',
    ROUND(AVG(hr_e.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN
            AVG(hr_e.SALARY) >= 2000
                AND AVG(hr_e.SALARY) <= 5800
        THEN
            'Júnior'
        WHEN
            AVG(hr_e.SALARY) >= 5801
                AND AVG(hr_e.SALARY) <= 7500
        THEN
            'Pleno'
        WHEN
            AVG(hr_e.SALARY) >= 7501
                AND AVG(hr_e.SALARY) <= 10500
        THEN
            'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs hr_j
        INNER JOIN
    hr.employees hr_e ON hr_j.JOB_ID = hr_e.JOB_ID
GROUP BY hr_j.JOB_TITLE
ORDER BY `Média salarial` , `Cargo`;
