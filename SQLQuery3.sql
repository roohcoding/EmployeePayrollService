create database payroll_service
use payroll_service
create table employee_payroll1(
Id int primary key identity,
name varchar(50),
phone varchar(15),
address varchar(100),
department varchar(20),
gender varchar(1),
basic_pay money,
deduction money,
taxable_pay money,
tax money,
netpay money,
startDate date
);









--CREATE PROCEDURE dbo.uspGetAddress @City nvarchar(30)
--AS
--SELECT * 
--FROM Person.Address
--WHERE City = @City
--GO

create proc SpAddEmployeeDetails
@EmployeeName varchar(50),
@PhoneNumber varchar(15),
@Address varchar(100),
@Department varchar(20),
@Gender varchar(1),
@BasicPay money,
@Deductions money,
@TaxablePay money,
@Tax money,
@NetPay money,
@StartDate date
as

insert into employee_payroll1 values (@EmployeeName, @PhoneNumber, @Address, @Department, @Gender, @BasicPay, @Deductions, @TaxablePay, @Tax, @NetPay, @StartDate)

go
select * from employee_payroll1 
show tables