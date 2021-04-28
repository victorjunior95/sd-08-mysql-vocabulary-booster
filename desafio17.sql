 /*Referência paara uso do BEFORE:
You cannot change a table while the INSERT trigger is firing. The INSERT might do some locking which could result in a deadlock.
 Also, updating the table from a trigger would then cause the same trigger to fire again in an infinite recursive loop.
  Both of these reasons are why MySQL prevents you from doing this.
https://stackoverflow.com/questions/15300673/mysql-error-cant-update-table-in-stored-function-trigger-because-it-is-already 
Retirado do PR de Arnaelcio Gomes
  https://github.com/tryber/sd-08-mysql-vocabulary-booster/pull/54/files, */

DELIMITER $$
CREATE TRIGGER new_date_orders
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = DATE(now());
END
$$
DELIMITER ;
