

with src_immi as (
  select * from {{ ref('src_immigration') }}
),
dim_country as (
  select * from {{ ref('dim_country') }}
),

dim_mode as (
  select * from {{ ref('dim_mode') }}
),
dim_port as (
  select * from {{ ref('dim_port') }}
),
dim_addr as (
  select * from {{ ref('dim_addr') }}
),
dim_visa as (
  select * from {{ ref('dim_visa') }}
),
dim_visatype as (
  select * from {{ ref('dim_visatype') }}
),
dim_date as (
  select * from {{ ref('dim_date') }}
),
dim_gender as (
  select * from {{ ref('dim_gender') }}
)

select a.cicid as id,
       a.i94yr as year,
       a.i94mon as month,
       b.id as cit_id,
       c.id as res_id,
       d.id as port_id,
       e.id as address_id,
       f.id as arrdate_id,
       g.id as mode_id,
       h.id as depdate_id,
       a.i94bir as bir,
       i.id as visa_id,
       a.count as count,
       a.biryear as biryear,
       j.id as gender_id,
       a.admnum as admnum,
       k.id as visatype_id
from src_immi a left join dim_country b 
  on a.i94cit = b.country_code
left join dim_country c
  on a.i94res = c.country_code
left join dim_port d
  on a.i94port = d.code
left join dim_addr e
  on a.i94addr = e.code
left join dim_date f
  on '1960-01-01'::date+a.arrdate = f.full_date
left join dim_mode g
  on a.i94mode = g.code
left join dim_date h
  on '1960-01-01'::date+a.depdate = h.full_date
left join dim_visa i
  on a.i94visa = i.code
left join dim_gender j
  on a.gender = j.name
left join dim_visatype k
  on a.visatype = k.name
