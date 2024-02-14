-- SubQuery
-- Names of the borrowers which has borrowed books
select firstname, lastname 
from borrower 
where id_borrower 
in (select id_borrower from borrow);
-- Names of the borrowers which has books late
select firstname, lastname from borrower where id_borrower in (
select id_borrower from borrow where return_date < current_date);