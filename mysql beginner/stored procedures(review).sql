-- stored procedures /*stores complex queries for easier call in future*/

select *
from employee_salary
where salary >= 50000;

create procedure larger_salaries()
select *
from employee_salary
where salary >= 50000;

call larger_salaries();


/*replace semi-colon in clossing queries*/
Delimiter $$ 
create procedure large_salaries3()
Begin
	select *
	from employee_salary
	where salary >= 50000;
	select *
	from employee_salary
	where salary >= 10000;
End $$

Delimiter ;

call large_salaries3();

-- Parameter helps to narrow down the query
Delimiter $$
create procedure large_salaries4(employee_id_param int)
Begin
	select salary
	from employee_salary
    where employee_id = employee_id_param;
End $$

Delimiter ;

call large_salaries4(1);