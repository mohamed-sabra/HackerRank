select
case 
when g.grade < 8 then 'NULL'
when g.grade >= 8 then s.name
end,
        g.grade, s.marks
from students s,grades g
where s.marks between g.min_mark and g.max_mark
order by
g.grade desc,
case 
when g.grade between 8 and 10 then s.name 
when g.grade between 1 and 7 then to_char(s.marks)
end;