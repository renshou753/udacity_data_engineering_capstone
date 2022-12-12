

with src_immi as (
  select * from {{ ref('src_immigration') }}
)

select 
      distinct gender as name
from src_immi
where gender is not null

