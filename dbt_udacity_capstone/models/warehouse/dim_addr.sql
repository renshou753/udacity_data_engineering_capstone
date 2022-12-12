

with stg_addr as (
  select * from {{ ref('stg_addr') }}
)

select 
  {{ dbt_utils.generate_surrogate_key(['code']) }} as id, 
  code,
  name
from stg_addr
