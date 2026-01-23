-- 코드를 입력하세요
SELECT
    a.FOOD_TYPE,
    a.REST_ID,
    a.REST_NAME,
    a.FAVORITES
from REST_INFO a,
(
    select food_type, max(favorites) favorites
from rest_info
    group by food_type
 ) b
where 
a.food_type = b.food_type
and a.favorites = b.favorites
order by a.food_type desc;
