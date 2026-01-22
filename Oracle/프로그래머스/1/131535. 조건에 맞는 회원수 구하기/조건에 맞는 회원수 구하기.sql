-- 코드를 입력하세요
SELECT
count(*) as USERS
from USER_INFO 
where 
to_char(joined, 'YYYY-mm-dd') like '2021-%'
and age between 20 and 29;
