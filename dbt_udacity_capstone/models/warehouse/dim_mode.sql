

with stg_mode as (
  select * from {{ ref('stg_mode') }}
)

select 
  {{ dbt_utils.generate_surrogate_key(['code']) }} as id, 
  code,
  name
from stg_mode
