with stg_race as (
  select * from {{ ref('stg_race') }}
)

select 
  {{ dbt_utils.generate_surrogate_key(['race']) }} as id, 
  race
from stg_race
