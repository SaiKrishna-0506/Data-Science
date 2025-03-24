DECLARE
    Student_name varchar2(50):='edukron';
BEGIN
    dbms_output.put_line('hello'|| student_name);
end;

DECLARE
    emp_id number;
    emp_name varchar2(20);
    emp_salary number(10,2);
    
BEGIN
    emp.emp_id:= 100;
    emp.emp_name:= 'edukron';
    emp.emp_salary:= 20000;
     DBMS_OUTPUT.PUT_LINE(emp.emp_name || ' '|| emp.emp_id || ' ' ||emp.emp_salary);
END;
-- select the first_name from hr.employees where employee_id=101;
DECLARE
   emp_name varchar2(100);
   salary number;
BEGIN
    select first_name,salary into emp_name,salary from hr.employees where employee_id=101;
    dbms_output.put_line(emp_name||salary);
 end;  
--  
DECLARE 
    emp_status varchar2(20);
BEGIN  
    select case when salary>50000 then 'high'
    else 'low' end into emp_status from hr.employees where employee_id=101;
    dbms_output.put_line( emp_status);
END;

-- find the no.of rows in table
DECLARE
    number_of_rows number;
BEGIN 
    select count(*) into number_of_rows from hr.employees;
    dbms_output.put_line(number_of_rows);
END; 
-- finding range of salary
DECLARE
    salary_range number;
BEGIN
    select max(salary)-min(salary) into salary_range from hr.employees;
    dbms_output.put_line(salary_range);
END;
-- another way of finding range
DECLARE
  min_salary number;
  max_salary number;
BEGIN
    select min(salary),max(salary) into min_salary,max_salary from hr.employees;
    dbms_output.put_line(max_salary-min_salary);
end;
-- finding average salary
DECLARE
emp_id number;
emp_name varchar2(20):='sai';
avg_salary number;
BEGIN
    select emp_id,emp_name,avg(salary) into  emp_id,emp_name,avg_salary from hr.employees ;
    dbms_output.put_line(emp_id || emp_name ||  avg_salary);
    end;
    -- finding the employee who has high salary
    DECLARE
    emp_name varchar2(60);
    max_salary number;
    BEGIN
        select emp_name ,max(salary) into emp_name,max_salary from hr.employees;
        dbms_output.put_line('highest paid employee:' || emp_name || 'with salary' || emp_name);
        end;
DECLARE
    emp_name VARCHAR2(50);
BEGIN
    SELECT first_name INTO emp_name FROM hr.employees 
    WHERE salary = (SELECT MAX(salary) FROM hr.employees);
    DBMS_OUTPUT.PUT_LINE('Highest Paid Employee: ' || emp_name);
END;
--  finding all employees in departmennts
 DECLARE
  emp_count number;
  BEGIN
    select count(*) into  emp_count from hr.employees where department_id=10;
    dbms_output.put_line('department_name' || emp_count);
end;
-- by using for loop
BEGIN
    for i in 1..5 loop
    dbms_output.put_line(i);
    end loop;
end;
-- by using for taken another example
BEGIN
    for i in reverse 5..1 loop
    dbms_output.put_line('reverse iteration:'|| i);
    end loop;
end;
-- another one
DECLARE
   x_num number;
BEGIN
    for x_num in 1..10 loop
     dbms_output.put_line('number:' || x_num);
     end loop;
end;
-- while loop  
DECLARE
    x NUMBER := 1; 
BEGIN
    WHILE x < 5 LOOP  
        DBMS_OUTPUT.PUT_LINE(x);  
        x := x + 1; 
    END LOOP;
END;

-- if , if else, if elif else,for, while,continue,exit
DECLARE
 variable1 number:=10;
 BEGIN
if variable1>15 then 
  dbms_output.put_line('greater than 17');
  else
  dbms_output.put_line('less than 9');

  end if;
end;
-- another example
DECLARE
 v1_number number:=140;
 BEGIN
    if v1_number>= 100 then
     dbms_output.put_line('v1_number greater than 20' );
     else
     dbms_output.put_line('v1_number lessthan or equal to 100');
     end if;
end;
--examples for games
declare
x_game varchar2(20);
 BEGIN
    if x_game='badminton' then
    dbms_output.put_line('game is carroms');
    else
    dbms_output.put_line('game is badminton');
    end if;
end;
-- rank the salary as high,medum,low where employee id is 101

 declare 
    emp_name VARCHAR2(20);
    emp_salary number;
      variable grade_value varchar2(20);
 BEGIN   
     select first_name,salary into emp_name,emp_salary from hr.employees where employee_id=101;
     IF emp_salary >= 30000 THEN
         grade_value:='Grade: High';
     ELSIF emp_salary >= 20000 THEN
         grade_value:='Grade: Medium';
     ELSE
       grade_value:='Grade: Low';    
     END IF;
    dbms_output.put_line(emp_name || emp_salary || grade_value);
 end;
--   another one
 declare
   x1_voting number := 15;
  BEGIN
    if x1_voting >= 18 then
     dbms_output.put_line('true');
     ELSE
      dbms_output.put_line('false');
     end if;

    end;
    -- another one
declare
   x1_voting number := 15;
    BEGIN
    if x1_voting >= 18 then
     dbms_output.put_line('true');
     elsif x1_voting <= 15 then
     dbms_output.put_line('false');
     ELSE
      dbms_output.put_line('right to vote');
    end if;

end;
-- some examples for elsif
declare
student_marks number :=95;
BEGIN
    if student_marks <= 100 THEN
    dbms_output.put_line(' qualify');
    elsif student_marks > 50 then
    dbms_output.put_line('not qualify');
    ELSE
    dbms_output.put_line('pass');
    end if;
end;
-- nested 
declare
emp_name varchar2(20):= 'seema' ;
emp_salary number:=30000;
grade_value varchar2(20);
BEGIN
if emp_salary < 80000 THEN 
    grade_value := 'high';
    ELSE
    grade_value := 'low';
    end if;
    dbms_output.put_line(emp_name || emp_salary || grade_value);
end;
-- nested 
declare 
     emp_name VARCHAR2(20);
     emp_salary number;
     grade_value varchar2(20);
 BEGIN   
     select first_name,salary into emp_name,emp_salary from hr.employees where employee_id=101;
     IF emp_salary >= 30000 THEN
         grade_value:='Grade: High';
     ELSIF emp_salary >= 20000 THEN
         grade_value:='Grade: Medium';
     ELSE
         grade_value:='Grade: Low';
     END IF;
     dbms_output.put_line(emp_name || emp_salary || grade_value);
 end;
 declare
  emp_name varchar2(20);
  emp_salary number:=15000;
  grade_value varchar2(20);
  BEGIN
    if emp_salary>=10000 THEN
    grade_value:='high';
     if emp_salary<=15000 THEN
     grade_value:='low';
     ELSE 
     grade_value:='high';
    end if;
    ELSE
    grade_value:='very high';
    end if;
    dbms_output.put_line(emp_name || emp_salary || grade_value);
end;
-- few examples
 declare
  emp_name varchar2(30):= 'seema';
  emp_salary number:=40000;
   grade_value varchar2(20);
   BEGIN
    if emp_salary<40000 then
     grade_value:='high';
     if emp_salary>=35000 then
      grade_value:='equal';
       ELSE
       grade_value:='not equal';
        end if;
    else
      grade_value:='low';
      end if;
      dbms_output.put_line(emp_name || emp_salary || grade_value);
end;
--   
declare
v_counter number:=1;
begin
LOOP
    dbms_output.put_line(v_counter);
    v_counter:=v_counter+1;
    exit when v_counter>5;
    end loop;
end;

declare 
v_counter number:=2;
begin
    LOOP
        dbms_output.put_line(v_counter);
        v_counter:=v_counter+2
        exit when v_counter<20;
        end loop;
end ;
declare 
v_counter number:=0;
begin
    LOOP
        dbms_output.put_line(v_counter);
        v_counter:=v_counter+4;
        exit when v_counter>100;
        end loop;
end ;
declare 
begin 
 for i in 1..5 loop
 dbms_output.put_line(i);
 end loop;
end;
declare 
begin 
 for i in 1..10 loop
 dbms_output.put_line('iteration'||i);
 end loop;
end;
declare 
begin 
 for i in  reverse 1..10 loop
 dbms_output.put_line(' reverse iteration'||i);
 end loop;
end;
declare
begin 
    for i in 1..10 LOOP
    if mod(i,2)=1 then
     dbms_output.put_line(i);
     end if;
     end loop;
end;

begin
    for i in 1..100 LOOP
    if mod(i,2)=2 then
        dbms_output.put_line(i);
        end if;
        end loop;
    end;  
  1 to 10 squares of the numebers

 begin
     for i in reverse 1..10 loop
         dbms_output.put_line(i ||' ' || i*i);
     end loop;
 end;  
--  fibonacci series
declare 
a number:=0;
b number:=1;
c number;
BEGIN
    dbms_output.put_line(a);
     dbms_output.put_line(b);
     for i in 1..10 loop
         c:=a+b;
         dbms_output.put_line(c);
         a:=b;
         b:=c;
     end loop;
 end;
--  multiplication tables of 1 to 10 upto 20
DECLARE
  table1 number:=2;
  begin 
    for num in 1..5 LOOP
    dbms_output.put_line('multiplication table of num' || num);
     for i in 1..10 LOOP
      dbms_output.put_line(num || '*' || i || ':' ||i*num);
       end loop;
    end loop;
end;
-- finding odd number
DECLARE
x_value number:=7;
begin
    if mod(x_value,2)=1 then
    dbms_output.put_line(x_value || 'is even number');
    else
    dbms_output.put_line(x_value || 'is an odd number');
    end if;
end;
--  finding odd number
DECLARE
x_value number:=12;
begin
    if mod(x_value,2)=1 then
    dbms_output.put_line(x_value || 'is even number');
    else
    dbms_output.put_line(x_value || 'is an odd number');
    end if;
end;
-- create a simple statements by using while lop
DECLARE
counter number:=1;
BEGIN
    while counter <=5 loop
     dbms_output.put_line('counter value' || counter);
     counter:=counter+1;
     end loop;
end;
declare
volunteers number:=15;
BEGIN
    while volunteers <=20 loop
    dbms_output.put_line('volunteers list' || volunteers);
    volunteers:=volunteers+1;
    end loop;
end;
 declare
 counter number:=10;
 BEGIN 
    while counter >=1loop
   
    dbms_output.put_line('counter value' || counter);
      counter:=counter-1;

    end loop;
    end;
    -- using continue and exit 
    declare 
     i number :=1;
     BEGIN 
        while i=+5 loop
         if i=3 THEN
         i:=i+1;
         continue;
         end if;
         dbms_output.put_line('number :' || i);
         i:=i+1;
          end loop;
          end;
 declare 
     i number :=1;
     BEGIN 
        while i<=5 loop
         if i=3 THEN
         i:=i+1;
         continue;
         end if;
         dbms_output.put_line('number :' || i);
         i:=i+1;
          end loop;
          end;
declare
i number:=2;
BEGIN
    while i>15 loop
    if i=5 then
    i:=i+1;
    exit;
    end if;
    dbms_output.put_line('number:' || i);
    i:=i+1;
    end loop;
    end;
    DECLARE
    i number:=1;
    begin
        while i<=10 loop
        if i=4 then
        i:=i+1;
        continue;
        end if;
        dbms_output.put_line('number:'|| i);
        end loop;
end;
