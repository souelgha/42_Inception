FROM debian:bullseye


#install package after update and upgrade
RUN apt update -y && apt upgrade -y
RUN apt install -y mariadb-server 

# COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY		./mariadb-conf.sh /mariadb-conf.sh

RUN			chmod +x /mariadb-conf.sh

EXPOSE		3306

ENTRYPOINT	["./mariadb-conf.sh"]