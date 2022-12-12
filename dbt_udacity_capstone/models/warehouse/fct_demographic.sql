with src_city as (
  select * from {{ ref('src_city') }}
),
dim_city as (
  select * from {{ ref('dim_city') }}
),
dim_race as (
  select * from {{ ref('dim_race') }}
),
dim_state as (
  select * from {{ ref('dim_state') }}
)

select b.id as city_id,
       c.id as race_id,
       d.id as state_id,
       a.median_age,
       a.male_population,
       a.female_population,
       a.total_population,
       a.number_of_veterans,
       a.foreign_born,
       a.average_household_size,
       a.count

from src_city a join dim_city b
  on a.city = b.city 
join dim_race c
  on a.race = c.race
join dim_state d
  on a.state = d.state
