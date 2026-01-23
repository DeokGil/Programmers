-- 코드를 입력하세요
SELECT
    a.PRODUCT_CODE,
    sum(a.price * b.sales_amount) as SALES
from 
    product a join offline_sale b
    on a.product_id = b.product_id
group by a.PRODUCT_CODE
order by SALES desc, a.PRODUCT_CODE 