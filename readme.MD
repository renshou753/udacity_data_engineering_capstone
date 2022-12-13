### Udacity Data Engineering Capstone



In this project I plan to use I94 immigration dataset and US city demographic dataset to make a small size data warehouse for analyzing the immigrants coming to United State.

I will adopt Kimball's dimensional modelling technique to make analytic tables for those two datasets. The analysis will starts with identifying the business process requirements, to extract and load the datasets into postgres database, then I will model the fact and dimension tables for further analysis.

The primary tools I used in this project are python, sql and dbt. I use python to script the extraction and loading parts of the ELT workflow, for the data transformation I mainly use sql and dbt in conjunction with airflow to do the workflow scheduling.



#### ERD

[erd diagram](https://dbdiagram.io/d/63957606bae3ed7c454608df)



### File Structure

Capstone Project.ipynb:   Main entry point for the project, including write up

data_sources: source input files

db: postgres db docker startup file for testing, useful if spun up local database

dbt_udacity_capstone: dbt working directory

city_profiling.html & immi_profiling.html: raw table profiling files

create_raw_tables.py: for creating initial raw table structures in postgres

requirements.txt: python dependencies



### How to run the project

1.  To spin up local database container at port 5434, RDBMS admin site at port 8082.

   ```
   docker compose up -d
   ```

2. Create python virtualenv, then install python dependencies.

   ```
   pip install -r requirements.txt
   ```

3. Create raw table structures.

   ```
   python create_raw_tables.py
   ```

4. Run the commands in Capstone Project.ipynb file to extract and load raw data into postgres.

5. Use dbt to run data modeling pipelines, before that need to configure database credentials in .dbt/profile.yml

   ```
   cd dbt_udacity_capstone
   dbt run
   dbt test
   dbt docs generate
   dbt docs serve
   ```

   
