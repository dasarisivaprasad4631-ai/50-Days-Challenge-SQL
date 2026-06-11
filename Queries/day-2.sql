use 50_Days_Challenge_Sql;

------1.Departments

select * from cleaned_departments
Where dept_name is NULL or dept_name = ''
or dept_id is NULL or dept_id = '';



------2. Employees
select * from cleaned_employees

where

emp_name = '' or emp_name is NULL
or 
city = '' or city is NULL
or
age = '' or age is NULL
or
dept_id = '' or dept_id is NULL 
or
hire_date = '' or hire_date is NULL
or
emp_id = '' or emp_id is null;


---------3.Attendance

select * from cleaned_attendance
where
attendance_id is null or attendance_id = ''
or
emp_id is null or emp_id = ''
or
attendance_date is null or attendance_date = ''
or 
status is null or status = '';



---------4.Performance

select * from cleaned_performance
where
emp_id is null or emp_id = ''
or
rating_2022 is null or rating_2022 = ''
or
rating_2023 is null or rating_2023 = ''
or
rating_2024 is null or rating_2024 = '';






---------5.salaries

select * from cleaned_salaries
where
salary_id is  null or salary_id=''
or
emp_id = '' or emp_id is NULL
or
salary is null or salary =''
or 
salary_date is null or salary_date ='';

