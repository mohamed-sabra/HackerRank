/*
Enter your query here.
 Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.
*/
select  w.id id,
        wp.age age ,
        w.coins_needed coins,
        w.power power
from Wands w, Wands_Property wp
where w.code = wp.code
and wp.is_evil = 0
and w.coins_needed in (select min(coins_needed)
                        from Wands w1, wands_property wp1
                        where w1.code= wp1.code
                        and w1.power = w.power
                        and w1.code = w.code)
order by w.power desc, wp.age desc;