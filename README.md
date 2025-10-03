# SQL_Task_7

# Database Organization
- Table Departments,
- Table Employees


1. Use CREATE VIEW with complex SELECT
* Cration of a view name as employee_details which combining the columns of 'Departments' and 'Employees' table on the reference of 'DeptID' column


2. Use views for abstraction and security
* View for Abstraction
  - Cration of a view name as employee_details which combining the columns of 'Departments' and 'Employees' table on the reference of 'DeptID' column (Here the important details will only shown and the details will hiden which will not useful)

* View for security
  - Creation of a view name as employee_salary with the column 'Name' and 'Salary' from Employees table with a condition of accessing the detail where the DeptId will '1'
