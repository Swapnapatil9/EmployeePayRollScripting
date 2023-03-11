show databases;
#UC1
create database employee_payroll_service;
use employee_payroll_service;

#UC2
create table employee_payroll(id int primary key auto_increment,name varchar(30), salary double not null, start date not null);
desc employee_payroll;

#UC3
insert into employee_payroll(name,salary,start) values('Bill',10000.00,'2018-01-03'),('Mark',100000.00,'2019-01-03'),('Charlie',1000000.00,'2017-01-03');

#UC4
select * from employee_payroll;

#UC5
select salary from employee_payroll where name='Bill';
select * from employee_payroll where start between cast('2018-01-01' as date) and date(now);

#UC6
alter table employee_payroll add gender char(1) after name;
update employee_payroll set gender = 'F' where name = 'Terisa';
update employee_payroll set gender = 'M' where name = 'Bill' or name = 'Charlie';
update employee_payroll set salary = '20000.00' where name = 'Terisa';

#UC7
select avg(salary) from employee_payroll where gender='M' group by gender;