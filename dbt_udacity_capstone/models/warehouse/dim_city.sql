
with stg_city as (
  select * from {{ ref('stg_city') }}
)

select 
  {{ dbt_utils.generate_surrogate_key(['city']) }} as id, 
  city
from stg_city
