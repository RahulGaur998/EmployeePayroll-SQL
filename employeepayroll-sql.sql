show databases;

create database employee_payroll;

use employee_payroll;

select database();

show tables;

create table employee_payroll_table(
id int unsigned auto_increment not null,
name varchar(40),
salary double,
start_date date ,
primary key(id)
);

describe employee_payroll_table;

insert into employee_payroll_table
 (name,salary,start_date) values("Bill",10000,"2018-01-03"),("Teresa",20000,"2019-11-13"),("Charlie",30000,"2020-05-21");
 
 select * from employee_payroll_table;
 
 select salary from employee_payroll_table where name='Bill';
 
 select * from employee_payroll_table where start_date between cast('2018-01-01' as date) and Date(now());
 
 alter table employee_payroll_table add gender varchar(1) after name;
 
 describe employee_payroll_table;
 
 update employee_payroll_table set gender='M' where name='Bill' or name='charlie';
 
 update employee_payroll_table set gender='F' where name='Teresa';
 
 select * from employee_payroll_table;
 
  select gender,sum(salary) as salary,min(salary) as minimum_salary,max(salary) as maximum_salary,avg(salary) as average_salary,count(salary) as no_of_employees from employee_payroll_table group by gender;