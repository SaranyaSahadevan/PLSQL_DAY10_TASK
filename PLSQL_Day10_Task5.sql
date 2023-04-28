/* To create procedure that generates at least 5 unique rows in jobs table. */


CREATE OR REPLACE PROCEDURE generate_unique_jobs 
AS 
BEGIN 
   INSERT INTO Student_23.jobs 
   VALUES ('Data Analyst', 5000, 10000); 
   INSERT INTO Student_23.jobs 
   VALUES ('Product Manager', 15000, 20000); 
   INSERT INTO Student_23.jobs 
   VALUES ('Software Engineer', 8000, 16000); 
   INSERT INTO Student_23.jobs 
   VALUES ('Systems Analyst', 9000, 18000); 
   INSERT INTO Student_23.jobs 
   VALUES ('Business Analyst', 20000, 30000); 
END; 
/

EXECUTE generate_unique_jobs;

