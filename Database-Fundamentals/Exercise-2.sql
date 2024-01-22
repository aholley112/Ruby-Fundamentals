CREATE TABLE Employees (
    EmployeeID int,
    FirstName text,
    LastName text,
    Department text
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department) VALUES (1, 'Alice', 'Johnson', 'HR');
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department) VALUES (2, 'Bob', 'Smith', 'IT');

SELECT FirstName, LastName FROM Employees;

