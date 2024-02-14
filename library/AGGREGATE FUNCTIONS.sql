-- AGGREGATE FUNCTIONS
-- Write Queries which,
-- Show author and the amount of books of that author
select author,count(name)
from book 
group by author;
-- Show author and the names of the books made by that author the result should be like this
select author, name
from book 
order by author;
-- Which will show the postalcodes and amount of borrowers on that postalcode area (borrower table). Results should be like this
select postalcode, count(id_borrower) from borrower group by postalcode;