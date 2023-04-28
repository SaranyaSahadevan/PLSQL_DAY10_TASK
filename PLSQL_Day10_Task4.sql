/* To create package for exam work. */


CREATE OR REPLACE PACKAGE exam_work AS
   --Declaring variables
   name VARCHAR2 (30);
   age INT;
   gpa NUMBER (3, 2);

   --Declaring subprograms
   PROCEDURE get_name (p_name IN OUT VARCHAR2);
   PROCEDURE get_age (p_age IN OUT INT);
   PROCEDURE get_gpa (p_gpa IN OUT NUMBER);
END exam_work;
/

CREATE OR REPLACE PACKAGE BODY exam_work AS
   PROCEDURE get_name (p_name IN OUT VARCHAR2) AS
   BEGIN
      name := p_name;
   END get_name;

   PROCEDURE get_age (p_age IN OUT INT) AS
   BEGIN
      age := p_age;
   END get_age;

   PROCEDURE get_gpa (p_gpa IN OUT NUMBER) AS
   BEGIN
      gpa := p_gpa;
   END get_gpa;
END exam_work;
/

