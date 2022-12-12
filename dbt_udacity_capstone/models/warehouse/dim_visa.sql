
with stg_visa as (
  select * from {{ ref('stg_visa') }}
)

select 
  {{ dbt_utils.generate_surrogate_key(['code']) }} as id, 
  code,
  name
from stg_visa
