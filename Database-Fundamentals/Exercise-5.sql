CREATE TABLE Courses (
    CourseID int,
    CourseName text,
    Department text,
    Credits int
);

INSERT INTO Courses (CourseID, CourseName, Department, Credits) VALUES (101, 'Introduction to Psychology', 'Psychology', 3);
INSERT INTO Courses (CourseID, CourseName, Department, Credits) VALUES (102, 'Principles of Economics', 'Economics', 4);
INSERT INTO Courses (CourseID, CourseName, Department, Credits) VALUES (103, 'Introduction to Computer Science', 'Computer Science', 3);

SELECT CourseName, Department FROM Courses;
