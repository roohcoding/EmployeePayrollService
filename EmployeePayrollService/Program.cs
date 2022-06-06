// See https://aka.ms/new-console-template for more information
using EmployeePayrollService;

Console.WriteLine("Hello, World!");
Console.WriteLine("Welcome to Employee Payroll!");
EmployeeRepo repo = new EmployeeRepo();
EmployeeModel employee = new EmployeeModel();
employee.EmployeeName = "Rinki";
employee.Department = "Mechanical";
employee.PhoneNumber = "7474362528";
employee.Address = "Delhi";
employee.Gender = 'F';
employee.BasicPay = 12000.00M;
employee.Deductions = 1500.00;
employee.StartDate = Convert.ToDateTime("2020-11-03");

//if (repo.AddEmployee(employee))
//    Console.WriteLine("Records added successfully");
repo.GetAllEmployee();
Console.ReadKey();