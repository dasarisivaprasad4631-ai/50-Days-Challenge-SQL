use 50_days_challenge_sql;


update cleaned_employees
set emp_name='unknown'
where emp_name is NULL or emp_name = '';


-----emp_id 13 = delhi

update cleaned_employees
set city='Delhi'
where emp_id = 13;


update cleaned_employees
set city='Delhi NCR'
where city is null or city = '';



----Rating_2023 with 0


update cleaned_performance
set rating_2023 = '0'
where rating_2023 is null or rating_2023 = '';


-----Find duplicate value..


----Employees

select emp_id,emp_name ,city ,count(*)
from cleaned_employees
group by emp_id,emp_name ,city
having count(*)>1;


----Departments

select  dept_id,dept_name,count(*)
from cleaned_departments
group by dept_id,dept_name
having count(*)>1;



----Salaries

select emp_id,salary,count(*)
from cleaned_salaries
group by emp_id,salary
having count(*)>1;


----Performance

select emp_id,rating_2022,rating_2023,rating_2024,count(*)
from cleaned_performance
group by emp_id,rating_2022,rating_2023,rating_2024
having count(*)>1;


----Attendance

select emp_id,attendance_date,status,count(*)
from cleaned_attendance
group by emp_id,attendance_date,status
having count(*)>1;




