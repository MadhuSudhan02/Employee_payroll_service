create database payroll_service;
show databases;
use payroll_service;
 create table employee_payroll ( id INT unsigned NOT NULL AUTO_INCREMENT, name VARCHAR(150) NOT NULL, salary Double NOT NULL, start DATE NOT NULL, PRIMARY KEY (id)
);
select * from employee_payroll;
insert into employee_payroll (name, salary, start) values ( 'bill',100000.00,'2018-01-03'), ('terisa',200000.00,'2019-11-13');
select * from employee_payroll;
select * from employee_payroll;
select * from employee_payroll where start between CAST('2018-01-01' AS DATE)AND DATE(NOW());
alter table employee_payroll add gender char(1) after name;
select * from employee_payroll;
update employee_payroll set gender = 'M' where id = 1 ;
update employee_payroll set gender = 'F' where id = 2 ;
select * from employee_payroll;
select sum(salary) from employee_payroll where gender = 'F' group by gender;
select gender, count(name) from employee_payroll group by gender;
select * from employee_payroll;
insert into payroll_service.employee_payroll (name, gender, salary, start) values ( 'Ram','M',600000.00,'2018-01-03'),
('Sita','F',300000.00,'2019-11-13'), ('lakshman','F',150000.00,'2019-11-13');
select * from employee_payroll;
select sum(salary) from payroll_service.employee_payroll where gender = 'F' group by gender;
select sum(salary) from payroll_service.employee_payroll where gender = 'M' group by gender;
select * ,avg(salary) from payroll_service.employee_payroll;
select * ,min(salary) from payroll_service.employee_payroll;
select * ,max(salary) from payroll_service.employee_payroll;
select count(salary) from payroll_service.employee_payroll;
alter table payroll_service.employee_payroll add phone_number varchar(25) after name;
alter table payroll_service.employee_payroll add address varchar(100) DEFAULT 'TBD' after phone_number;
alter table payroll_service.employee_payroll add department varchar(150) not null after address;
select * from payroll_service.employee_payroll;
Delete from  payroll_service.employee_payroll where department;
ALTER table payroll_service.employee_payroll rename column salary to basic_pay;
ALTER table payroll_service.employee_payroll add deductions int not null after basic_pay; 
ALTER table payroll_service.employee_payroll add taxablePay int not null after deductions;
ALTER table payroll_service.employee_payroll add netPay int not null after taxablePay;
insert into employee_payroll(id, name, phone_number, address, department, gender, basic_pay, deductions, taxablePay, netPay, incomeTax, start) values
     (121,'terisa','4512474562','TBD','Marketing','F',3000000.00,1000000.00,3000000.00,500000.00,50000.00,'2019-11-13');
insert into employee_payroll(id, name, phone_number, address, department, gender, basic_pay, deductions, taxablePay, netPay, incomeTax, start) values
     (122,'terisa','4512474562','TBD','Sales','F',2000000.00,5000000.00,300000.00,400000.00,50000.00,'2019-11-13');
SELECT * FROM payroll_service.employee_payroll;