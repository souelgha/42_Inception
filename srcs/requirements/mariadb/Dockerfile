FROM debian:bullseye


RUN apt update -y && apt upgrade -y
RUN apt install -y mariadb-server 

COPY		conf/mariadb-conf.sh /mariadb-conf.sh

RUN			chmod +x /mariadb-conf.sh

EXPOSE		3306

ENTRYPOINT	["/mariadb-conf.sh"]