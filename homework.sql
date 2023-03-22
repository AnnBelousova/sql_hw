--task 1.1
INSERT INTO employee (first_name,last_name,gender,age)
VALUES 
('Roman', 'Sidorov', 'mail', 42),
('Elena', 'Savina', 'femail', 53),
('Arina', 'Kan', 'femail', 24);

select * from employee;

--task 1.2
select first_name as Имя, last_name as Фамилия
from employee;

--task 1.3
select * from employee
where age < 30 or age > 50;

--task 1.4
select * from employee
where age between 30 and 50;

--task 1.5
select * from employee
where first_name like('_____%');

--task 2.1
update employee
set first_name = 'Arina'
where id = 1;

update employee
set first_name = 'Anna'
where id = 5;

--task 2.2
select first_name as Имя, sum(age) as Суммарный_возраст
from employee
group by first_name
having count(first_name) > 1;

--task3
select first_name as Имя, 
age as Минимальный_возраст
from employee
where age = (select min(age) from employee);

--task4
select first_name as Имя, 
max(age) as Максимальный_возраст
from employee
group by first_name
having count(first_name) > 1;
