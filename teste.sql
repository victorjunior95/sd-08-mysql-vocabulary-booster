-- UPDATE hr.employees
-- SET PHONE_NUMBER = ‘777’
-- WHERE PHONE_NUMBER LIKE ‘515%’;

-- MAS AO FAZER ISSO, APAGOU TODOS E DEIXOU SOMENTE 777.

-- Com isso tentei fazer:

-- UPDATE hr.employees
-- SET PHONE_NUMBER = REPLACE(PHONE_NUMBER, ‘515%’, ‘777%’);
-- Mas não deixou afetar em nada;

-- Com isso teve que colocar um condicional
-- UPDATE hr.employees
-- SET PHONE_NUMBER = REPLACE(PHONE_NUMBER, ‘515%’, ‘777%’);
-- WHERE PHONE_NUMBER LIKE ‘515%’;
