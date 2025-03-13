select upper('data'),lower('data'),length('data'),initcap('data engineering'),
ltrim('data'),rtrim('data')from dual

select lpad('123',5,'0')from dual

select rpad('1234',6,'1')from dual

select trim('   data  ')from dual

select replace('data science','science','engineering')from dual

select abs(-12)from dual

select floor(12.45) from dual

select round(12.345,2) from dual

select round(12.345,0)from dual

select power(2,3)from dual

select sqrt(25)from dual

select exp(1)from dual


select ln(10) from dual

select greatest (10,20,30,40) from dual

system functions

select sysdate from dual

select systimestamp from dual
