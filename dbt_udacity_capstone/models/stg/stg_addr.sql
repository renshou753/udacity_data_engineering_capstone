with t1 as (
  with src_immi as (
    select * from {{ ref('src_immigration') }}
  )

  select 
        distinct i94addr as code,
        case i94addr
        when 'AL'then'ALABAMA'
        when 'AK'then'ALASKA'
        when 'AZ'then'ARIZONA'
        when 'AR'then'ARKANSAS'
        when 'CA'then'CALIFORNIA'
        when 'CO'then'COLORADO'
        when 'CT'then'CONNECTICUT'
        when 'DE'then'DELAWARE'
        when 'DC'then'DIST. OF COLUMBIA'
        when 'FL'then'FLORIDA'
        when 'GA'then'GEORGIA'
        when 'GU'then'GUAM'
        when 'HI'then'HAWAII'
        when 'ID'then'IDAHO'
        when 'IL'then'ILLINOIS'
        when 'IN'then'INDIANA'
        when 'IA'then'IOWA'
        when 'KS'then'KANSAS'
        when 'KY'then'KENTUCKY'
        when 'LA'then'LOUISIANA'
        when 'ME'then'MAINE'
        when 'MD'then'MARYLAND'
        when 'MA'then'MASSACHUSETTS'
        when 'MI'then'MICHIGAN'
        when 'MN'then'MINNESOTA'
        when 'MS'then'MISSISSIPPI'
        when 'MO'then'MISSOURI'
        when 'MT'then'MONTANA'
        when 'NC'then'N. CAROLINA'
        when 'ND'then'N. DAKOTA'
        when 'NE'then'NEBRASKA'
        when 'NV'then'NEVADA'
        when 'NH'then'NEW HAMPSHIRE'
        when 'NJ'then'NEW JERSEY'
        when 'NM'then'NEW MEXICO'
        when 'NY'then'NEW YORK'
        when 'OH'then'OHIO'
        when 'OK'then'OKLAHOMA'
        when 'OR'then'OREGON'
        when 'PA'then'PENNSYLVANIA'
        when 'PR'then'PUERTO RICO'
        when 'RI'then'RHODE ISLAND'
        when 'SC'then'S. CAROLINA'
        when 'SD'then'S. DAKOTA'
        when 'TN'then'TENNESSEE'
        when 'TX'then'TEXAS'
        when 'UT'then'UTAH'
        when 'VT'then'VERMONT'
        when 'VI'then'VIRGIN ISLANDS'
        when 'VA'then'VIRGINIA'
        when 'WV'then'W. VIRGINIA'
        when 'WA'then'WASHINGTON'
        when 'WI'then'WISCONSON'
        when 'WY'then'WYOMING' 
        when '99'then'All Other Codes'
        else ''
        end as name
  from src_immi
  where i94addr is not null
)

select code,
       name
from t1
where name <> ''
