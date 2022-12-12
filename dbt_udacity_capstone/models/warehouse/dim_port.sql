
with stg_port as (
  select * from {{ ref('stg_port') }}
)

select 
  {{ dbt_utils.generate_surrogate_key(['code']) }} as id, 
  code,
  name
from stg_port
