with src_city as (
  select * from {{ ref('src_city') }}
)

select 
  distinct state, state_code
from src_city
