-- triggers and events
-- a trrigger is a clock of code that executes automatically when an event takes place on a specific table
-- aim, addition on demographics to automatically add on salary
select *
from employee_demographics;

select *
from employee_salary;

Delimiter $$
create trigger employee_insert
	after insert on employee_salary
    for each row
Begin
	insert into employee_demographics(employee_id, first_name, last_name)
    values(new.employee_id, new.first_name, new.last_name);
End $$
Delimiter ;

insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values (13, 'Jean', 'Saperstein', 'Entertainment CEO', 1000000, Null);


-- Events

select *
From employee_demographics;
Delimiter $$
Create event delete_retirees
on schedule every 30 second
Do
Begin
	Delete
    from employee_demographics
    where age >= 60;
end $$
Delimiter ; 

Show variables like 'event%' ;  -- verifying variable status like helps in targetting