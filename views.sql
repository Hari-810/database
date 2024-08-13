-- SQLite

-- Views in SQL are virtual tables created by a query that selects data from one or more tables. 
-- They can simplify complex queries, improve security by restricting access to specific data, and make queries more readable. 
-- Here's how you can create and use views with examples:

-- Create a View
--        Create a view to show employees working in the "Sales" department
CREATE VIEW SalesEmployees AS
SELECT EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate, JobTitle, Salary
FROM OfficeEmployees
WHERE Department = 'Sales';

-- Query the View
SELECT * FROM SalesEmployees WHERE JobTitle = 'Sales Coordinator';


-- Create a More Complex View
CREATE VIEW DepartmentSalaries AS
SELECT Department,
       AVG(Salary) AS AverageSalary,
       MIN(Salary) AS MinimumSalary,
       MAX(Salary) AS MaximumSalary
FROM OfficeEmployees
GROUP BY Department;

-- View for Top 5 Highest Salaries
CREATE VIEW Top5Salaries AS
SELECT EmployeeID, FirstName, LastName, Salary
FROM OfficeEmployees
ORDER BY Salary DESC
LIMIT 5;


-- Dropping Views
DROP VIEW IF EXISTS EmployeeDetails;
