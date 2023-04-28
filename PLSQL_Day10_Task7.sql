/* To create STUDENT_23.Employees_Jobhistory */

CREATE TABLE STUDENT_23.Employees_Jobhistory (
    Employee_ID INT PRIMARY KEY,
    First_Name VARCHAR2(50) NOT NULL,
    Last_Name VARCHAR2(50) NOT NULL,
    Hire_Date DATE NOT NULL,
    Email VARCHAR2(50) NOT NULL,
    Job_ID NUMBER NOT NULL,
    Job_title VARCHAR2(50) NOT NULL,
    Salary NUMBER(8,2) NOT NULL,
    End_Date DATE NOT NULL
    );
    
/* To CREATE OR REPLACE PROCEDURE generate_Employees_Jobhistory */

CREATE OR REPLACE PROCEDURE generate_Employees_Jobhistory
AS  
BEGIN 
   INSERT INTO Student_23.Employees_Jobhistory 
   VALUES ('1', 'Joel', 'John', '01-02-2013', 'joel.john@gmail.com', '1', 'sales man', '5500', '28-04-2023');
   INSERT INTO Student_23.Employees_Jobhistory 
   VALUES ('2', 'Job', 'Joe', '02-03-2014', 'job.joe@gmail.com', '2', 'Front office staff', '6500', '28-04-2023');
   INSERT INTO Student_23.Employees_Jobhistory 
   VALUES ('3', 'Sarah', 'Serah', '03-04-2015', 'sarah.serah@gmail.com', '3', 'admin', '7500', '28-04-2023');
   INSERT INTO Student_23.Employees_Jobhistory 
   VALUES ('4', 'Saran', 'Das', '04-05-2016', 'saran.das@gmail.com', '4', 'Developer', '8500', '28-04-2023');
   INSERT INTO Student_23.Employees_Jobhistory 
   VALUES ('5', 'Elby', 'Mathew', '05-06-2017', 'elby.mathew@gmail.com', '5', 'Testing Lead', '50000', '28-04-2023');
   INSERT INTO Student_23.Employees_Jobhistory 
   VALUES ('6', 'Jiyo', 'Jijo', '06-07-2018', 'jiyo.jijo@gmail.com', '6', 'IT Analyst', '60000', '28-04-2023');
   INSERT INTO Student_23.Employees_Jobhistory 
   VALUES ('7', 'Eva', 'Maria', '07-08-2017', 'eva.maria@gmail.com', '7', 'Business analyst', '70000', '28-04-2023');
   INSERT INTO Student_23.Employees_Jobhistory 
   VALUES ('8', 'Ryan', 'Sibin', '08-09-2016', 'ryan.sibin@gmail.com', '8', 'Team Lead', '80000', '28-04-2023');
   INSERT INTO Student_23.Employees_Jobhistory 
   VALUES ('9', 'Dona', 'Jo', '09-10-2015', 'dona.jo@gmail.com', '9', 'manager', '90000', '28-04-2023');
   INSERT INTO Student_23.Employees_Jobhistory 
   VALUES ('10', 'Anna', 'An', '10-02-2014', 'anna.an@gmail.com', '10', 'CEO', '100000', '28-04-2023');
     
END;
/

/* To create procedure that fills job history with data from hire period till today for all employees, jobs should have unique salary and/or job title. */

CREATE PROCEDURE fill_jobhistory AS
BEGIN
  FOR cur_rec IN
  (SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE, EMAIL, JOB_ID, JOB_TITLE, SALARY
  FROM Student_23.Employees_Jobhistory
  WHERE END_DATE IS NULL OR END_DATE >SYSDATE)
  LOOP
    INSERT INTO Student_23.Employees_Jobhistory 
    (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE, EMAIL, JOB_ID, JOB_TITLE, SALARY, END_DATE) 
    VALUES (cur_rec.EMPLOYEE_ID, cur_rec.FIRST_NAME, cur_rec.LAST_NAME, cur_rec.HIRE_DATE, 
    cur_rec.EMAIL, cur_rec.JOB_ID, cur_rec.JOB_TITLE, cur_rec.SALARY, SYSDATE);
  END LOOP;
END;


EXECUTE fill_jobhistory;

