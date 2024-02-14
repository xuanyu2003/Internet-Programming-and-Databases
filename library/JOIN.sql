-- JOIN
-- Make Query which,...
-- Show the names of borrower and which book they have borrowed. Result should be like this
select borrower.firstname, borrower.lastname, book.name from borrow inner join borrower on borrow.id_borrower = borrower.id_borrower inner join book on borrow.id_book= book.id_book;
-- The same as below but use concat and change the headins, so the the results are like this
SELECT  GROUP_CONCAT(DISTINCT CONCAT_WS(' ', borrower.firstname, borrower.lastname)) AS "Borrower name", group_concat(book.name) as "book name"
FROM borrow 
INNER JOIN borrower ON borrow.id_borrower = borrower.id_borrower 
INNER JOIN book ON borrow.id_book = book.id_book 
GROUP BY book.name;
-- The same as below but use group_concat, so that the results are like this
SELECT  GROUP_CONCAT(DISTINCT CONCAT_WS(' ', borrower.firstname, borrower.lastname)) AS "Borrower name", group_concat(book.name) as "books"
FROM borrow 
INNER JOIN borrower ON borrow.id_borrower = borrower.id_borrower 
INNER JOIN book ON borrow.id_book = book.id_book 
group by borrower.id_borrower;