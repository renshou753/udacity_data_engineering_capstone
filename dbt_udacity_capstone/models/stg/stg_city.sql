
with src_city as (
  select * from {{ ref('src_city') }}
)

select 
  distinct city
from src_city
where city <> '' and city is not null
