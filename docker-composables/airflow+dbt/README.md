# README
- This compose is based off official quick start guide: https://airflow.apache.org/docs/apache-airflow/stable/start/docker.html
- This compose also installs DBT during the airflow-init build stage
- Example dbt DAG (yet to be added to this example compose dir)

# Setup Guide
follow guide starting from `Initializing Environment`: https://airflow.apache.org/docs/apache-airflow/stable/start/docker.html#initializing-environment

Init the airflow environment with the following command instead:
```
docker-compose up --build airflow-init
```
