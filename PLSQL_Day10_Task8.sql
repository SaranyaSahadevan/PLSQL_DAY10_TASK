/* Create trigger that fills job history on INSERT and UPDATE operations on employees table, previous job should be either different job or lower salary. */


CREATE OR REPLACE TRIGGER fill_job_history
AFTER INSERT OR UPDATE OF job_id, salary ON student_23.employees
FOR EACH ROW
DECLARE
  prev_job_id student_23.employees.job_id%TYPE;
  prev_salary student_23.employees.salary%TYPE;
BEGIN
  -- Get the previous job ID and salary for the employee
  SELECT job_id, salary INTO prev_job_id, prev_salary
  FROM student_23.employees
  WHERE employee_id = :new.employee_id;
  
  -- If the previous job ID is different or the previous salary is lower, then insert into job history
  IF prev_job_id != :new.job_id OR prev_salary > :new.salary THEN
    INSERT INTO student_23.job_history (employee_id, start_date, end_date, job_id)
    VALUES (:new.employee_id, :new.hire_date, SYSDATE, :new.job_id);
  END IF;
END;
/


