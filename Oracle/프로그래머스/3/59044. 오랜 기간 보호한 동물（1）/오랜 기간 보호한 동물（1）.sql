-- 코드를 입력하세요
select
* 
from (
SELECT
   i.NAME,	i.DATETIME
from 
    ANIMAL_INS i left join
    ANIMAL_OUTS o on i.ANIMAL_ID = o.ANIMAL_ID
where o.datetime is null
order by i.datetime
) 
where rownum <=3
    