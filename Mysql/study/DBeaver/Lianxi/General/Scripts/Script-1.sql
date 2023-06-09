-- select fen
-- from test.newtable n 
-- where name = '张'

select *
from test.newtable n 
where not name in (select name from test.newtable n2 where fen < 60)

