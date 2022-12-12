
with src_immi as (
  select * from {{ ref('src_immigration') }}
)

select 
      distinct visatype as name
from src_immi
where visatype is not null
