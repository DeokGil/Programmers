-- 코드를 입력하세요
SELECT
    MCDP_CD as "진료과코드",
    count(*) as "5월예약건수"
from APPOINTMENT
where
    to_char(APNT_YMD,'yyyy-mm-dd') like '2022-05-%'
group by mcdp_cd
order by count(*) ASC , MCDP_CD ASC
