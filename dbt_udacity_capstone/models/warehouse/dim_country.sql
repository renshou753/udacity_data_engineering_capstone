

with stg_country as (
  select * from {{ ref('stg_country') }}
)

select 
  {{ dbt_utils.generate_surrogate_key(['country_code']) }} as id, 
  country_code,
  name
from stg_country
