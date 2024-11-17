/*

Used to build a realtion between multple tables with same columns
- Joins are used to combine multiple tables into single.
- Types: Inner, Left, Right and Full jon.

*/



--Case Study
use Instagram;

select * from accounts;
select * from likes;


-- Selecting data which are having same data in accounts and likes tables....

select * from accounts inner join likes;

--InnerJoin - Common row between two tables
-- Matching the data from both the tables 

select * from accounts inner join on accounts.username==likes.username;

--Left-join (Displays the Left tables with respective to the common data between both the tables)

select * from accounts left join on accounts.username== likes.username;
-- right join (Displays the Right tables with respective to the common data between both the tables)
select * from accounts right join on accounts.username== likes.username;

--Full join joins both the data irrespective of the common fiels, (- or NULL) for data whicis n ot present.
-- Union is used to implement the Full join
select * from accounts left join on accounts.username== likes.username;
union
select * from accounts right join on accounts.username== likes.username;

