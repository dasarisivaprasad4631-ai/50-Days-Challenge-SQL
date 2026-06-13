use 50_days_challenge_sql;

------Emp/Salaries/performance



-----Employees Table

with cte as (
    select *,row_number() over (partition by emp_id,emp_name ,
    city

    order by emp_id) as rn
    
    from cleaned_employees)

Delete from cleaned_employees 
where emp_id in (select emp_id from cte where rn>1);


-------Salaries Table

with cte as (
    select *,row_number() over ( partition by emp_id,salary 
    order by emp_id) as rn
    from cleaned_salaries)

    delete from cleaned_salaries
    where emp_id in (select emp_id from cte where rn>1);



-------Performance Table


with cte as (
    select *, row_number() 
    over (partition by emp_id,rating_2022,rating_2023,rating_2024 
    order by emp_id)
    as rn
    from cleaned_performance)
    delete from cleaned_performance
    where emp_id in ( select emp_id from cte where rn>1);




ask----------- Identify Inconsistencies in the Data

------City

Select distinct city 
from cleaned_employees;

update cleaned_employees
set city = concat(upper(left(trim(city),1)), 
Lower(substring(trim(city),2)));
)


Update cleaned_employees
set city = case
when city in ('Dlhi','Delhi ncr','Delhi','New delhi')then 'DELHI'
WHEN CITY IN ('Hydbd','Hyderabad') THEN 'HYDERABAD'
WHEN CITY IN ('Bangalore') then 'BENGALURU'
WHEN CITY IN ('Mumbai') then 'MUMBAI'
WHEN CITY IN ('Chennai') then 'CHENNAI'
WHEN CITY IN ('Pune') then 'PUNE'

ELSE CITY

END;




------Department
select distinct dept_name
from cleaned_departments;
