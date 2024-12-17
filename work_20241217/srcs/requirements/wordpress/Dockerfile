FROM debian:11

RUN apt update && apt upgrade 
RUN  apt install -y curl \
     php \
     php7.4-fpm \
     php-mysql \mariadb-client

# copy the wordpress configuration script to the root directory in the container
COPY conf/wp_conf.sh /

# change the permission of the script to make it executable
RUN  chmod +x wp_conf.sh

# define the entrypoint command to run when the container starts
ENTRYPOINT ["/wp_conf.sh"]

# CMD ["tail", "-f"]