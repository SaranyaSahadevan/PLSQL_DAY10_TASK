/* To create table that stores jobs with values job title, min salary, max salary. */



CREATE TABLE Student_23.jobs (
 job_title VARCHAR2(50) NOT NULL,
 min_salary NUMBER NOT NULL,
 max_salary NUMBER NOT NULL,
 CONSTRAINT jobs_pk PRIMARY KEY (job_title)
);





