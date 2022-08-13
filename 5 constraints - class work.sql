#contraints
#column level constraints - primary key, auto_increament, unique, not null, null
#check, default, enum
create table if not exists student(
student_id int primary key,
student_name varchar(20) not null,
contact_no varchar(10) unique
);

insert into student 
values(1,'Liam','9999999999');

select * from student;

insert into student 
values(2,'Amanda','9999999998');

insert into student (student_id,contact_no)
values(3,'9999999988');

#write update to set the name of student - id = 3

alter table student
modify student_name varchar(20) not null;

#check 

create table if not exists employee(
id int primary key,
emp_name varchar(20),
emp_age int check(emp_age >18)
);

insert into employee
values (1,'nilay',19);

#drop table customers;
create table customers(
id int,
cust_name varchar(20),
country varchar(20) default 'SA'
);

insert into customers (id,cust_name) values(1, 'nilay');

select * from customers;

insert into customers (id,cust_name,country) values(2, 'meera', 'India');


#enum
#drop table student;
create table students(
student_id int primary key,
course_name enum('Electronic engg','Computer engg','Civil engg'),
contact_no varchar(10) unique
); 

insert into students values(1, 'Electrical engg' ,'9999999999');

insert into students values(1, 'Computer engg' ,'9999999999');


#Task - create a table with folowing contraints -check, default, enum
country varchar(20) default 'SA'
emp_age int check(emp_age >18)
contact_no varchar(10) unique




