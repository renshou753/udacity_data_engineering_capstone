
with src_immi as (
  select * from {{ ref('src_immigration') }}
)

select 
      '1960-01-01'::date+depdate as depdate
from src_immi
where depdate is not null

