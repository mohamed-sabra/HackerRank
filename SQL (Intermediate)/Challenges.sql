/*
Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.
*/


select h.hacker_id, h.name, count(c.challenge_id)
from hackers h, challenges c
where h.hacker_id = c.hacker_id
having count(c.challenge_id)
not in 
        (
        select challenges_created from
        (select  c.hacker_id hacker_id ,count(c.challenge_id) challenges_created
        from    Challenges c
        group by c.hacker_id)
        having count(hacker_id) >1
        and challenges_created < 
            (select max(challenges_created)
                from
                (select  c.hacker_id hacker_id ,count(c.challenge_id) challenges_created
                from    Challenges c
                group by c.hacker_id)
            )
        group by challenges_created
        )
group by h.hacker_id, h.name        
order by count(c.challenge_id) desc, h.hacker_id;