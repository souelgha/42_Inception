FROM debian:11


#install package after update and upgrade
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y mariadb-server netcat
	
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# COPY		./mariadb-conf.sh /etc/mariadb-conf.conf

# RUN			chmod +x /mdb-conf.sh

# EXPOSE		3306

# ENTRYPOINT	["./mariadb-conf.sh"]