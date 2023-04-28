/* To create the procedure that uses the previous procedure and prints out total number of employees at the end. */

CREATE OR REPLACE PROCEDURE PRINT_EMPLOYEE_INFO_TOTAL
AS
    CURSOR c_employee_ids IS
        SELECT DISTINCT EMPLOYEE_ID
        FROM STUDENT_23.Employees_Jobhistory;
    
    v_employee_id c_employee_ids%ROWTYPE;
    v_total_employees NUMBER := 0;
BEGIN
    OPEN c_employee_ids;
    LOOP
        FETCH c_employee_ids INTO v_employee_id;
        EXIT WHEN c_employee_ids%NOTFOUND;
        PRINT_EMPLOYEE_INFO(v_employee_id.EMPLOYEE_ID);
        v_total_employees := v_total_employees + 1;
    END LOOP;
    CLOSE c_employee_ids;
    
    DBMS_OUTPUT.PUT_LINE('Total number of employees: ' || v_total_employees);
END;
/

SET SERVEROUTPUT ON;

BEGIN
    PRINT_EMPLOYEE_INFO_TOTAL;
END;
/