# drop tables

immigration_table_drop = "drop table if exists immigration"
city_table_drop = "drop table if exists city"

# create tables

immigration_table_create = ("""
    create table if not exists immigration (
        cicid serial primary key,
        i94yr integer,
        i94mon integer,
        i94cit integer,
        i94res integer,
        i94port varchar,
        arrdate integer,
        i94mode integer,
        i94addr varchar,
        depdate integer,
        i94bir integer,
        i94visa integer,
        count integer,
        dtadfile integer,
        visapost varchar,
        occup varchar,
        entdepa varchar,
        entdepd varchar,
        entdepu varchar,
        matflag varchar,
        biryear integer,
        dtaddto varchar,
        gender varchar,
        insnum varchar,
        airline varchar,
        admnum numeric,
        fltno varchar,
        visatype varchar,
        updated_at timestamp not null
    )
""")

city_table_create = ("""
    create table if not exists city (
        id serial primary key,
        city varchar,
        state varchar,
        median_age numeric,
        male_population numeric,
        female_population numeric,
        total_population numeric,
        number_of_veterans numeric,
        foreign_born numeric,
        average_household_size numeric,
        state_code varchar,
        race varchar,
        count numeric,
        updated_at timestamp not null
    )
""")


create_table_queries = [immigration_table_create, city_table_create]
drop_table_queries = [immigration_table_drop, city_table_drop]