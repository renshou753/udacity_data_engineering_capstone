
with stg_visatype as (
  select * from {{ ref('stg_visatype') }}
)

select 
  {{ dbt_utils.generate_surrogate_key(['name']) }} as id, 
  name
from stg_visatype
