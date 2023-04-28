/* To adjust existing package in a way to utilize type structure for common variables between all procedures and function. */

CREATE OR REPLACE PACKAGE your_package_name AS

    TYPE EmployeeType IS RECORD (
        EMPLOYEE_ID    STUDENT_23.Employees.EMPLOYEE_ID%TYPE,
        FIRST_NAME     STUDENT_23.Employees.FIRST_NAME%TYPE,
        LAST_NAME      STUDENT_23.Employees.LAST_NAME%TYPE,
        HIRE_DATE      STUDENT_23.Employees.HIRE_DATE%TYPE,
        EMAIL          STUDENT_23.Employees.EMAIL%TYPE,
        JOB_TITLE      STUDENT_23.Employees.JOB_TITLE%TYPE,
        SALARY         STUDENT_23.Employees.SALARY%TYPE
    );

    PROCEDURE your_procedure_1(employee IN EmployeeType);
    FUNCTION your_function_1(employee_id IN STUDENT_23.Employees.EMPLOYEE_ID%TYPE) RETURN EmployeeType;
    -- Add additional procedures/functions as needed

END your_package_name;
/


