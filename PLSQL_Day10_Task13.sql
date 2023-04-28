/* To create function that calculates total company spendings on salary (lets assume that it is monthly salary and that it is paid only for full months of work) 
for all employees in company history. */


CREATE OR REPLACE FUNCTION calculate_total_salary (
    p_start_date DATE,
    p_end_date DATE
)
RETURN NUMBER
IS
    v_total_salary NUMBER := 0;
BEGIN
    FOR rec IN (SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE, EMAIL, JOB_TITLE, SALARY
                FROM student_23.employees
                WHERE HIRE_DATE <= p_end_date)
    LOOP
        IF rec.HIRE_DATE <= p_start_date THEN
            v_total_salary := v_total_salary + rec.SALARY * MONTHS_BETWEEN(p_end_date, p_start_date);
        ELSE
            v_total_salary := v_total_salary + rec.SALARY * MONTHS_BETWEEN(p_end_date, rec.HIRE_DATE);
        END IF;
    END LOOP;

    RETURN v_total_salary;
END;
/


SELECT calculate_total_salary(DATE '2020-01-01', DATE '2020-12-31') FROM DUAL;