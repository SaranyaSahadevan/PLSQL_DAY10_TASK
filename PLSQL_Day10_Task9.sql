/* To create procedure that prints out required information for certain employee with employee id as input variable */


CREATE OR REPLACE PROCEDURE PRINT_EMPLOYEE_INFO(
    EMPLOYEE_ID_IN IN STUDENT_23.Employees_Jobhistory.EMPLOYEE_ID%TYPE
)
AS
    CURSOR c_employee_info IS
        SELECT e.FIRST_NAME,
               e.LAST_NAME,
               jh.JOB_TITLE,
               jh.HIRE_DATE,
               jh.END_DATE
        FROM STUDENT_23.Employees_Jobhistory jh
        JOIN STUDENT_23.Employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        WHERE jh.EMPLOYEE_ID = EMPLOYEE_ID_IN
        ORDER BY jh.END_DATE DESC NULLS LAST;
        
    v_employee_info c_employee_info%ROWTYPE;
BEGIN
    OPEN c_employee_info;
    FETCH c_employee_info INTO v_employee_info;
    
    IF c_employee_info%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with ID ' || EMPLOYEE_ID_IN);
        CLOSE c_employee_info;
        RETURN;
    END IF;
    
    DBMS_OUTPUT.PUT_LINE(v_employee_info.FIRST_NAME || ' ' || v_employee_info.LAST_NAME || ' - ' || v_employee_info.JOB_TITLE);
    
    WHILE c_employee_info%FOUND LOOP
        DBMS_OUTPUT.PUT_LINE('-----------------------');
        DBMS_OUTPUT.PUT_LINE('Position: ' || v_employee_info.JOB_TITLE);
        DBMS_OUTPUT.PUT_LINE('Start Date: ' || v_employee_info.HIRE_DATE);
        DBMS_OUTPUT.PUT_LINE('End Date: ' || v_employee_info.END_DATE);
        FETCH c_employee_info INTO v_employee_info;
    END LOOP;
    
    CLOSE c_employee_info;
END;
/


SET SERVEROUTPUT ON;

-- Execute the procedure and pass employee ID as input parameter
BEGIN
    PRINT_EMPLOYEE_INFO(1);
    PRINT_EMPLOYEE_INFO(2);
    PRINT_EMPLOYEE_INFO(3);
    PRINT_EMPLOYEE_INFO(4);
    
END;
/
