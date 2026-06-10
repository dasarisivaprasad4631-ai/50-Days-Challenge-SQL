use 50_Days_Challenge_Sql;

CREATE TABLE 
departments(dept_id varchar(40),
dept_name varchar(40));

CREATE TABLE employees
(
emp_id varchar(40),
emp_name varchar(40),
age varchar(40),
city varchar(40),
dept_id varchar(40),
hire_date varchar(40));

CREATE TABLE salaries
(salary_id varchar(40),
emp_id varchar(40),
salary varchar(40),
salary_date varchar(40));

CREATE TABLE attendance
(attendance_id varchar(40),
emp_id varchar(40),
attendance_date varchar(40),
attendance_status varchar(40));)

CREATE TABLE performance
(
    emp_id varchar(40),
    rating_2022 varchar(40),
    rating_2023 varchar(40),
    rating_2024 varchar(40));
