create database Organization;
use Organization;

-- Cration of Departments
CREATE TABLE Departments (
	DeptID INT PRIMARY KEY,
    DeptName VARCHAR(255)
);

-- Insertion of rows in Department Table
INSERT INTO Departments(DeptID, DeptName)
values
	(1, 'Sales'),
	(2, 'Marketing'),
	(3, 'IT');

-- Creation Employees Table
create table Employees (
	Emp_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    DeptID INT,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);


-- Insertion of rows in Employees Table
insert into Employees (Emp_ID, Name, DeptID, Salary)
values
	(1, 'John Smith', 1, 50000.00),
	(2, 'Jane Doe', 2, 60000.00),
	(3, 'Bob Johnson', 1, 55000.00),
	(4, 'Alice Brown', 3, 70000.00),
	(5, 'Mike Davis', 2, 65000.00);


-- ======================================================================================
-- 1. Use CREATE VIEW with complex SELECT
-- ======================================================================================

create view employee_details as 
select E.Emp_ID, E.Name, D.DeptName, E.Salary
from Employees as E
JOIN Departments as D 
ON E.DeptID = D.DeptID;



-- ======================================================================================
-- 2. Use views for abstraction and security
-- ======================================================================================

-- View for Abstraction
create view employee_info as 
select E.Emp_ID, E.Name, D.DeptName, E.Salary
from Employees as E
JOIN Departments as D 
ON E.DeptID = D.DeptID;
-- Here only important details are shown and unuseful are hiden..



-- View for Security
create view Employee_salary as 
select Name, Salary
from Employees
where DeptID = 1;
-- Here the Employee Salary only seen or detail access by the Employee of DeptID '1'