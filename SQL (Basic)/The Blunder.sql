--select round(avg(salary) - avg(to_number(replace(to_char(salary),'0',''))),0) from employees;
select 
ceil(avg(salary)-
avg(to_number(replace(to_char(salary),'0',''))))
from employees;