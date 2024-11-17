/* 

Set Operators
------------

It is used to combines two diffetnt queries where both the columns are same

- Union    (Extract the common data from bothe tables )
- Union All ( Extracts the data from both the tables including duplicates)
- Intersect ( Extract common data from both the tables)
- Except/ Minus(Table1 - Table2)


Note:  Number of columns should be equal
*/



--Except

select * from accounts;
Except --or Union or Union All or Intersect (Use as per your sue)
select * from likes;