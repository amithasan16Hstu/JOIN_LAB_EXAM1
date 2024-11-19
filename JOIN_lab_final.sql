create database left_Join1;
use left_join1;
create table employee(
id int not null,
empName varchar(20),
primary key(id)
);
insert into employee(id,empName)
values(1,'Amit'),(2,'Porag'),(3,'Utal'),(4,'Shuvo'),
(5,'Habib'),(6,'Keya');

create table salary_info(
eid int not null,
salary double,
primary key(eid)
);
insert into salary_info(eid,salary)
values(1,200000),(3,50000),(5,12000),(7,12450);

select employee.id,employee.empName,salary_info.salary
from employee
left join salary_info
on employee.id=salary_info.eid;

-- Right Join means all right value
select employee.id,employee.empName,salary_info.salary
from employee
right join salary_info
on employee.id=salary_info.eid;

-- Inner Join means matches all value show
select employee.id,employee.empName,salary_info.salary
from employee
inner join salary_info
on employee.id=salary_info.eid;

