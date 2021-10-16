FROM apache/airflow:2.3.0
USER root
# install requirements deps
RUN apt-get update && \
apt-get install -y git
USER airflow
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# install dbt & libraries
RUN apt-get update
RUN pip install \
  dbt-core \
  dbt-postgres \
  dbt-redshift \
  dbt-snowflake \
  dbt-bigquery \
  dbt-sqlite
RUN dbt --version