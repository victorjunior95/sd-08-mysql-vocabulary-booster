SELECT  CONCAT(E.FIRST_NAME,' ',E.LAST_NAME)                                        AS `Nome completo` 
       ,CONCAT(DAY(JH.START_DATE),'/',MONTH(JH.START_DATE),'/',YEAR(JH.START_DATE)) AS `Data de início` 
       ,CONCAT(DAY(JH.END_DATE),'/',MONTH(JH.END_DATE),'/',YEAR(JH.END_DATE))       AS `Data de rescisão` 
       ,ROUND(DATEDIFF(JH.END_DATE,JH.START_DATE) / 365,2)                          AS `Anos trabalhados`
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
ORDER BY 1, 4;
