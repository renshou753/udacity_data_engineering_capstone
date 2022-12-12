with src_dates as (
  select
    (generate_series('2000-01-01', '2099-01-01', '1 day'::interval))::date as d
)

select 
  {{ dbt_utils.generate_surrogate_key(['d']) }} as id, 
  d                     as full_date,
  extract(YEAR from d)  as year,
  extract(WEEK from d)  as year_week,
  extract(DAY from d)   as year_day,
  extract(QUARTER from d)  as fiscal_qtr,
  extract(MONTH from d) as month
from src_dates
