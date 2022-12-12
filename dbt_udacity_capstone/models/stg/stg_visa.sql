

with src_immi as (
  select * from {{ ref('src_immigration') }}
)

select 
      distinct i94visa as code,
      case i94visa
        when 1 then 'Business'
        when 2 then 'Pleasure'
        when 3 then 'Student'
      end as name
from src_immi

