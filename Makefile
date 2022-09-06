all: configured
	docker-compose up

configured: unconfigured
	docker build -t mysql-cluster-configured:8.0 .
	docker tag mysql-cluster-configured:8.0 tallinn1960/mysql-cluster-configured:8.0
	docker push tallinn1960/mysql-cluster-configured:8.0

unconfigured:
	docker build -t mysql-cluster-unconfigured:8.0 8.0
