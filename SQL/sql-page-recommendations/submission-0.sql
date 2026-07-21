-- Write your query below
with cte as(
    select user2_id as id
    from friendship
    where user1_id=1
    union
    select user1_id as id
    from friendship
    where user2_id=1
)
select distinct l.page_id as recommended_page from likes l join cte c on l.user_id=c.id
where l.page_id not in (select page_id from likes where user_id=1)
order by l.page_id;