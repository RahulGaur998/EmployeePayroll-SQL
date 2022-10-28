/* Show all databases */
show databases;

/* Create a database with name employee_payroll */
create database employee_payroll;

/* Use database with name employee_payroll */
use employee_payroll;

show tables;

/* Create a table with name employee_payroll_table inside employee_payroll database */
create table employee_payroll_table(
id int unsigned auto_increment not null,
name varchar(40),
salary double,
start_date date ,
primary key(id)
);

/* Structure of table employee_payroll_table*/
describe employee_payroll_table;

/* Insert values into employee_payroll_table table*/
insert into employee_payroll_table
 (name,salary,start_date) values("Bill",10000,"2018-01-03"),("Teresa",20000,"2019-11-13"),("Charlie",30000,"2020-05-21");
 
 
/* Will show table employee_payroll_table with inserted values*/
 select * from employee_payroll_table;
 
 /* Will show row from table employee_payroll_table where name is Bill*/
 select salary from employee_payroll_table where name='Bill';
 
  /* Will show row from table employee_payroll_table where start_date is 2018-01-01 and between current date */
 select * from employee_payroll_table where start_date between cast('2018-01-01' as date) and Date(now());
 
 /* Will alter table employee_payroll_table structure add gender column with varchar datatype after name column*/
 alter table employee_payroll_table add gender varchar(1) after name;
 
 describe employee_payroll_table;
 
 /* Will update value in table employee_payroll_table where name is Bill or name is Charlie set gender as M*/
 update employee_payroll_table set gender='M' where name='Bill' or name='charlie';
 
 update employee_payroll_table set gender='F' where name='Teresa';
 
 select * from employee_payroll_table;
 
  select gender,sum(salary) as salary,min(salary) as minimum_salary,max(salary) as maximum_salary,avg(salary) as average_salary,count(salary) as no_of_employees from employee_payroll_table group by gender;