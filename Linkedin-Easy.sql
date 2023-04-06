-- Linkedin Easy Question - Link - https://datalemur.com/questions/matching-skills

/*
Given a table of candidates and their skills, you're tasked with finding the candidates best suited 
for an open Data Science job. You want to find candidates who are proficient in Python, Tableau, and PostgreSQL.
Write a query to list the candidates who possess all of the required skills for the job. 
Sort the output by candidate ID in ascending order.

Assumption:
There are no duplicates in the candidates table.
*/


```
SELECT candidate_id
FROM candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id
having COUNT(*) >=3
ORDER BY 1 ASC;
```


