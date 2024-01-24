CREATE TABLE Employees (
    EmployeeID int,
    FirstName text,
    LastName text,
    DepartmentID int
);

CREATE TABLE Departments (
    DepartmentID int,
    DepartmentName text
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID) VALUES (1, 'Alice', 'Johnson', 1);
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID) VALUES (2, 'Bob', 'Smith', 2);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES (1, 'HR');
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES (2, 'IT');

SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
