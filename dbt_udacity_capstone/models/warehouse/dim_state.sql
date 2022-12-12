with stg_state as (
  select * from {{ ref('stg_state') }}
)

select 
       {{ dbt_utils.generate_surrogate_key(['state', 'state_code']) }} as id, 
       state, 
       state_code
from stg_state
