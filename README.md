# mlflow-docker-compose

## Primary info
The main useful options of this repository are:
*store the core MLflow info into new separate database instance (in our case it is PostgreSQL-14.8);
* store the run artifact files into docker volume, but it can also be changed on standalone 
  FTP-server or another remote bucket like Amazon S3;
* includes additional GUI of pgAdmin4 for database monitoring; 
* added shell-scripts for easy start, restart and stop;
* the default setup in this repo serves MLflow with its own database instance,
  and both database data and artifact files stored in their own docker volumes.

## Repo structure:
```bash
(root): - docker-compose.yaml
	- README
	- .env
	- start-service.sh
	- restart-service.sh
	- stop-service.sh
	- entrypoint.d:
	- mlflow:
		- Dockerfile
		- requirements.txt
		- start.sh
```

## Instruction:
Step one, clone this repo:
```bash
$git clone https://github.com/nesemenpolkov/mlflow-docker-compose.git
$cd mlflow-docker-compose
```
Step two, run shell-script:
```bash
# if not working, uncomment following
# $sudo chmod 777 ./start-service.sh
$./start-service.sh
````
If some errors is thrown, check .env file and restart service:
```bash
$./restart-service.sh
```

For some other cases, check .env file:
```bash
PG_DB_NAME=mlflowdb
PG_USERNAME=mladmin
PG_PASSWORD=Passw0rd
PG_DATA=/var/lib/postgresql/data/pgdata
PG_ADMIN_EMAIL=kocmoleader@gmail.com
PG_ADMIN_PASSWORD=pgadmin123
PG_ADMIN_MODE=False
```


