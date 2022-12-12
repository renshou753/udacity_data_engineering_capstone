
with src_immi as (
  select * from {{ ref('src_immigration') }}
)

select 
      distinct i94mode as code,
      case i94mode
        when 1 then 'Air'
        when 2 then 'Sea'
        when 3 then 'Land'
        when 9 then 'Not reported'
      end as name
from src_immi
where i94mode is not null

