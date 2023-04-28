/* To Create procedure that prints out highest earning employees in each unique job title.	Required information is: Name, Surname, Job Title and Salary. */

CREATE OR REPLACE PROCEDURE employee_salary AS
BEGIN
  FOR c IN (SELECT JOB_TITLE, MAX(SALARY) AS MAX_SALARY FROM student_23.employees GROUP BY JOB_TITLE) LOOP
    DBMS_OUTPUT.PUT_LINE('Job Title: ' || c.JOB_TITLE || ' Highest Earning Employee: ');
    FOR c2 IN (SELECT FIRST_NAME, LAST_NAME, SALARY FROM student_23.employees WHERE JOB_TITLE = c.JOB_TITLE AND SALARY = c.MAX_SALARY) LOOP
      DBMS_OUTPUT.PUT_LINE(c2.FIRST_NAME || ' ' || c2.LAST_NAME || ' Salary: ' || c2.SALARY);
    END LOOP;
  END LOOP;
END;
/

EXECUTE EMPLOYEE_SALARY;