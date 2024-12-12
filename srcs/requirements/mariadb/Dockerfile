FROM debian:11 
#ou version bullseye

#install package after update and upgrade
RUN apt-get update && apt-get upgrade -y \
	 && apt-get install -y mariadb-server netcat
	
COPY		./mdb-conf.sh /etc/mariadb-conf.conf

RUN			chmod +x /mdb-conf.sh

EXPOSE		443

ENTRYPOINT	["./mdb-conf.sh"]