FROM debian:bullseye

RUN apt update && apt upgrade \
	&& apt install nginx -y \
	&& apt install openssl -y \
	&& apt install curl -y
	

#repertoire de stockage ssl :certificate & key
RUN mkdir -p /etc/nginx/ssl 
RUN chmod 755 /etc/nginx/ssl 
RUN chown -R www-data:www-data /etc/nginx/ssl 

# ssl certificate parametres

RUN openssl req -batch -x509 -sha256 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/nginx/ssl/inception.key \
	-out /etc/nginx/ssl/inception.crt \
	-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=sonouelg.42.fr/UID=sonouelg"


COPY		conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/www/html
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

EXPOSE	443

CMD ["nginx", "-g", "daemon off;"]  
