/* To create table that stores employees with first and last name, hire date, email, job id and salary. */


CREATE TABLE STUDENT_23.Employees (
    Employee_ID INT PRIMARY KEY,
    First_Name VARCHAR2(50) NOT NULL,
    Last_Name VARCHAR2(50) NOT NULL,
    Hire_Date DATE NOT NULL,
    Email VARCHAR2(50) NOT NULL,
    Job_ID NUMBER NOT NULL,
    Job_title VARCHAR2(50) NOT NULL,
    Salary NUMBER(8,2) NOT NULL
);



