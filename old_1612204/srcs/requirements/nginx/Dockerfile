FROM debian:11

RUN apt update && apt upgrade 
RUN  apt install nginx -y \
	&& apt install openssl -y 

#repertoire de stockage ssl :certificate & key
RUN mkdir -p /etc/nginx/ssl 

# generate ssl certificate a verifier

RUN openssl req -batch -x509 -sha256 -nodes -newkey rsa:2048 \
	-keyout /etc/nginx/ssl/inception.key \
	-out /etc/nginx/ssl/inception.crt \
	-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=sonouelg.42.fr/UID=sonouelg"


COPY		conf/nginx.conf /etc/nginx/nginx.conf

RUN	mkdir -p /var/run/nginx 

#create wp directory
RUN mkdir -p /var/www/html

# #chg owner et rights de html to www-data
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html


EXPOSE		443

# # ENTRYPOINT	["sh", "setup_nginx.sh"]
CMD ["nginx", "-g", "daemon off;"]  
#assure que nginx reste le processus principal PID 1