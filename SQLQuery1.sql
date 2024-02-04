create database Capstone
use Capstone

create table admin(EmaildId nvarchar(50) primary key, APassword nvarchar(50))
insert into admin values('mayank@gmail.com','mayank@123')
select * from admin

create table Employee(EmpId nvarchar(50) primary key,Name nvarchar(50), DOJ date,Passcode int)
insert into Employee values('Emp1@gmail.com','hanuman','2020-02-20',11)
select * from Employee

create table BlogInfo(BlogId int primary key,Title nvarchar(50),Subject nvarchar(50),DOC datetime,
BlogURL nvarchar(50),EmpId nvarchar(50) foreign key references Employee(EmpId))
insert into BlogInfo values(101,'bajrangi','maruti','2023-03-20','www.google.com','Emp1@gmail.com')
select * from BlogInfo