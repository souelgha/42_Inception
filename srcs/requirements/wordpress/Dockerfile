FROM debian:bullseye

RUN apt update && apt upgrade 
RUN  apt install -y curl \
     php \
     php7.4-fpm \
     php-mysql \
     mariadb-client

COPY conf/wp_conf.sh /

RUN  chmod +x wp_conf.sh

ENTRYPOINT ["/wp_conf.sh"]
