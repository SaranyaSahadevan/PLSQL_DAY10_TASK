/* To Create procedure that generates at least 10 unique rows in employees with different jobs and random salaries within given
job range and hire date from 5 to 10 years ago. */

CREATE OR REPLACE PROCEDURE generate_employees
AS 
BEGIN 
   INSERT INTO Student_23.employees
   VALUES ('1', 'Joel', 'John', '01-02-2013', 'joel.john@gmail.com', '1', 'sales man', '5500');
   INSERT INTO Student_23.employees
   VALUES ('2', 'Job', 'Joe', '02-03-2014', 'job.joe@gmail.com', '2', 'Front office staff', '6500');
   INSERT INTO Student_23.employees
   VALUES ('3', 'Sarah', 'Serah', '03-04-2015', 'sarah.serah@gmail.com', '3', 'admin', '7500');
   INSERT INTO Student_23.employees
   VALUES ('4', 'Saran', 'Das', '04-05-2016', 'saran.das@gmail.com', '4', 'Developer', '8500');
   INSERT INTO Student_23.employees
   VALUES ('5', 'Elby', 'Mathew', '05-06-2017', 'elby.mathew@gmail.com', '5', 'Testing Lead', '50000');
   INSERT INTO Student_23.employees
   VALUES ('6', 'Jiyo', 'Jijo', '06-07-2018', 'jiyo.jijo@gmail.com', '6', 'IT Analyst', '60000');
   INSERT INTO Student_23.employees
   VALUES ('7', 'Eva', 'Maria', '07-08-2017', 'eva.maria@gmail.com', '7', 'Business analyst', '70000');
   INSERT INTO Student_23.employees
   VALUES ('8', 'Ryan', 'Sibin', '08-09-2016', 'ryan.sibin@gmail.com', '8', 'Team Lead', '80000');
   INSERT INTO Student_23.employees
   VALUES ('9', 'Dona', 'Jo', '09-10-2015', 'dona.jo@gmail.com', '9', 'manager', '90000');
   INSERT INTO Student_23.employees
   VALUES ('10', 'Anna', 'An', '10-02-2014', 'anna.an@gmail.com', '10', 'CEO', '100000');
     
END;
/


EXECUTE generate_employees;





