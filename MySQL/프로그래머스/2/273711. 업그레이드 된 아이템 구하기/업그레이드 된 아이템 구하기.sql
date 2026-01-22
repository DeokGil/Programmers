-- 코드를 작성해주세요 mysql
select ITEM_ID, ITEM_NAME, RARITY
from ITEM_INFO 
where ITEM_ID in (
    select 
        TREE.ITEM_ID
    from   
              ITEM_INFO as INFO
    left join ITEM_TREE as TREE on INFO.ITEM_ID = TREE.PARENT_ITEM_ID 
    where
    INFO.RARITY = 'RARE' and TREE.item_id is not null
)
order by ITEM_ID desc;



