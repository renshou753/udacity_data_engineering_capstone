with src_city as (
  select * from {{ ref('src_city') }}
)

select 
  distinct race
from src_city
