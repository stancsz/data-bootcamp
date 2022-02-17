# Airflow Docker Image with Starter Dag
This is an airflow starter environment for getting started and creating your first DAGs, with examples of how to generate them dynamically.

![img.png)](README/img.png)
![img2.png](README/img2.png)

This is based off the airflow [quickstart guide](https://airflow.apache.org/docs/apache-airflow/2.0.1/start/docker.html). It is only meant for local dev purposes only. This image extends the official image to allow installation of images during setup, with dependencies added in the `requirements.txt`. This setup is also meant for users who would like to have a quick and convenient local environment for developing dags meant to deployed to Google Cloud Composer or Astronomer. 

> Before you begin
> https://airflow.apache.org/docs/helm-chart/stable/index.html
> If you want a simple Docker-based deployment, consider using Kubernetes and deploying Airflow using the Official Airflow Community Helm Chart.
> https://airflow.apache.org/docs/helm-chart/stable/index.html

# Setup
> ```
> mkdir -p ./dags ./logs ./plugins
> echo -e "AIRFLOW_UID=$(id -u)" > .env
> # AIRFLOW_GID=0 may be needed
> echo -e "AIRFLOW_GID=0" >> .env
> ```
> https://airflow.apache.org/docs/apache-airflow/stable/start/docker.html#setting-the-right-airflow-user


# Start containers
Initialize the database
> ```
> docker-compose up --build airflow-init
> ```

Running Airflow
> ```
> docker-compose up
> ```

# Working with pods
Install additional dependencies
```
docker exec -it airflow-docker_airflow-worker_1 pip install -r requirements.txt
```
bash exec -it
```
docker exec -it airflow-docker_airflow-webserver_1 /bin/bash
```


# Clean up environment
> https://airflow.apache.org/docs/apache-airflow/stable/start/docker.html#cleaning-up-the-environment

Stopping Airflow with docker compose down
```
docker-compose down --volumes
```
to remove images, add `--rmi all` 

_additional commands:_

stop all docker containers
```
docker kill $(docker ps -q)
```
remove all docker containers
```
docker rm $(docker ps -a -q) 
```
prune all volumes
```
docker system prune -a --volumes
```
