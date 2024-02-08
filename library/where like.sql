
#where exercise
-- Shows all data from all fields in borrower-table.
select * from borrower;
-- Shows firstnames and lastnames in borrower table in alphabetical order based to lastname.
select firstname, lastname from borrower order by lastname;
-- Shows all postalcodes, but same code should 'be mentioned only once.'? about distinct
select distinct postalcode from borrower;
-- Shows first 5 rows in borrower-table (use Google to find the answer).
select * from borrower limit 5;
-- Shows rows 6-10 in borrower table.
select * from borrower limit 5 OFFSET 5;
-- Shows all fields from borrower if id_borrower is 9.
select * from borrower where id_borrower=9;
-- Shows all fields from borrower if id_borrower is 9 or 11.
select * from borrower where id_borrower IN (9, 11);
-- Shows all fields from borrower if id_borrower is 9 or 11 or 13.
select * from borrower where id_borrower IN (9, 11,13);
-- Shows all fields from borrower if id_borrower is 5-10.
select * from borrower where id_borrower between 5 and 10;
-- Shows all fields from borrower if id_borrower is not 5-10.
select * from borrower where id_borrower not between 5 and 10;
-- Shows all fields from borrower if id_borrower is 1-12 and postalcode is 90101.
select * from borrower where id_borrower between 1 and 12 having postalcode = 90101;
-- Shows borrower's lastname and firstname if firstname is Carla.
select firstname, lastname from borrower where firstname = 'carla';
-- Shows borrower's lastname and firstname if firstname is Carla or Ralph.
select firstname, lastname from borrower where firstname IN ('Carla', 'Ralph');
-- Shows borrower's lastname and firstname if streetaddress is Uusikatu 4 or Isokatu 66.
select firstname, lastname from borrower where streetaddress IN ('Uusikatu 4', 'Isokatu 66');
-- Shows borrower's lastname and firstname if the person doesn't have a phone.
select firstname, lastname from borrower where phone IS NULL OR phone = '';
-- Shows borrower's lastname and firstname and phone numbers if the person has phone.
select firstname, lastname from borrower where phone IS not NULL OR phone = '';
-- MySQL has several functions which will return current date. Use Google to find out them. You can test them by writing Query: "SELECT function-name;"
SELECT CURDATE();
-- Shows all fields from Borrow-table if the book is late.
SELECT *
FROM Borrow
WHERE return_date < CURDATE(); -- Assuming return_date is the date the book is expected to be returned

#like exercise
-- Shows all fields from book if the book name starts with 'A'
select * from book where name like 'A%' ;
-- Shows all fields from book if the book name includes word Management
select * from book where name like '%Management%' ;
-- Shows all fields from book if the book name includes letter e
select * from book where name like '%e%' ;
-- Shows all fields from book if the book name includes letter e and a
select * from book where name LIKE '%e%' AND name LIKE '%a%';
-- Shows firstnames and lastnames of borrower's who lives on Isokatu
select firstname, lastname from borrower where streetaddress like '%Isokatu%';
-- Shows firstnames and lastnames and phonenumber of borrower, which phonenumber starts with 040
select firstname, lastname, phone from borrower where phone like '040%';