FROM mysql-cluster-unconfigured:8.0

COPY my.cnf /etc/my.cnf
COPY mysql-cluster.cnf /etc/mysql-cluster.cnf
