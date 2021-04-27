delimiter $$
create trigger trigger_new_order
before insert on w3schools.orders
for each row
begin
set new.OrderDate = now();
end $$
delimiter ;
