-- 코드를 입력하세요
SELECT
ii.ingredient_type,
sum(TOTAL_ORDER) as TOTAL_ORDER
from
    FIRST_HALF  fh
    left join ICECREAM_INFO  ii
    on fh.flavor = ii.flavor
    group by ii.ingredient_type;


