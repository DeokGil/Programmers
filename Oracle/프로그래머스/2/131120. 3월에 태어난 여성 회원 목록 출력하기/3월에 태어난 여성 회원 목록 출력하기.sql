-- 코드를 입력하세요
SELECT
   MEMBER_ID,	MEMBER_NAME,GENDER,	to_char(DATE_OF_BIRTH,'yyyy-mm-dd') as DATE_OF_BIRTH
from 
    MEMBER_PROFILE 
where 
GENDER = 'W'
and to_char(DATE_OF_BIRTH, 'yyyy-MM-dd') like  '%-03-%'
 and tlno is not null
 order by member_id asc
 ;
