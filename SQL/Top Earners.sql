select salary*months ,count(1) from employee 
where salary*months=(select max(months*salary) from employee)
group by salary*months;