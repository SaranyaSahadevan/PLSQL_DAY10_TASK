/* To create procedure that prints out currently active employee first and last names with their salaries and sum of all salaries at the end as total. */


CREATE OR REPLACE PROCEDURE PRINT_EMPLOYEE_SALARIES
AS
   CURSOR cur_active_employees IS
      SELECT FIRST_NAME, LAST_NAME, SALARY
      FROM student_23.employees
      WHERE HIRE_DATE < SYSDATE;
   lv_total_salary NUMBER := 0;
BEGIN
   FOR active_employees IN cur_active_employees LOOP
      DBMS_OUTPUT.PUT_LINE(active_employees.FIRST_NAME || ' ' ||
         active_employees.LAST_NAME || ' ' ||
         active_employees.SALARY);
      lv_total_salary := lv_total_salary + active_employees.SALARY;
   END LOOP;
   DBMS_OUTPUT.PUT_LINE('Total Salary: ' || lv_total_salary);
END;
/



EXECUTE PRINT_EMPLOYEE_SALARIES;