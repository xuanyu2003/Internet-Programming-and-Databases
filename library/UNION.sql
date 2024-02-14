-- Union 
-- Print this table
-- +----------+-----------------+
-- | author   | amount of books |
select author , count(id_book) 
from book
group by author
union
select 'total', count(author)
from book;