use collegeDBbca;
CREATE TABLE department1(
     departmentID INT PRIMARY KEY,
     departmentname varchar(50)
);
CREATE TABLE student1(
     studentID INT PRIMARY KEY,
     studentname VARCHAR(20),
     departmentID INT 
);
CREATE TABLE course1(
    courseID INT PRIMARY KEY,
    course name VARCHAR(10)
);
CREATE TABLE enrolment1(
    enrollmentID INT PRIMARY KEY,
    studentID INT,
    courseID INT 
);
INSERT INTO department1(departmentID,departmentname)VALUES(101,'COMPUTER SCIENCE');
INSERT INTO department1(departmentID,departmentname)VALUES(102,'BIOTECHNOLOGY');
INSERT INTO student1(studentID,studentname,departmentID)VALUES(1001,'CHANDRU',101);
INSERT INTO student1(studentID,studentname,departmentID)VALUES(1002,'NIRU',102);
INSERT INTO student1(studentID,studentname,departmentID)VALUES(1003,'CHANDRAMOHAN',101);
INSERT INTO course1(courseID,coursename)VALUES(201,'DATABASE STRUCTURES');
INSERT INTO course1(courseID,coursename)VALUES(202,'DATA STRUCTURES');
INSERT INTO course1(courseID,coursename)VALUES(203,'WEB DEVELOPMENT');
INSERT INTO enrollment1(enrollmentID,studentID,departmentID)VALUES(1,1001,201);
INSERT INTO enrollment1(enrollmentID,studentID,departmentID)VALUES(2,1001,202);
INSERT INTO enrollment1(enrollmentID,studentID,departmentID)VALUES(3,1002,203);
INSERT INTO enrollment1(enrollmentID,studentID,departmentID)VALUES(4,1003,201);
CREATE VIEW studentdetails AS 
SELECT 
     S.studentname,
     c.coursename,
     D.departmentname
FROM student s 
JOIN enrollment E 
    ON S.studentID = E.studentID
JOIN course c
    ON E.courseID = c.courseID
JOIN Department D
    ON s.DepartmentID = D.DepartmentID;
SELECT * FROM Studentdetails;
