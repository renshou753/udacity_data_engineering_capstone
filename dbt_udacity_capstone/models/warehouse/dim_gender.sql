

with stg_gender as (
  select * from {{ ref('stg_gender') }}
)

select 
  {{ dbt_utils.generate_surrogate_key(['name']) }} as id, 
  name
from stg_gender
