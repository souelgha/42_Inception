FROM debian:11

RUN apt update && apt upgrade \
	&& apt install nginx -y \
	&& apt install openssl -y \
	&& apt install sudo -y 


# generate ssl certificate

RUN openssl req -batch -x509 -sha256 -nodes -newkey rsa:2048 -days 365 \
	-keyout /etc/ssl/private/localhost.key \
	-out /etc/ssl/certs/localhost.crt

# RUN			rm -f /etc/nginx/nginx.conf

# COPY		./config/nginx.conf /etc/nginx/nginx.conf
# COPY		scripts/setup_nginx.sh /setup_nginx.sh

# RUN			chmod -R +x /setup_nginx.sh

EXPOSE		443

# ENTRYPOINT	["sh", "setup_nginx.sh"]
CMD ["nginx", "-g", "daemon off;"]  
#assure que nginx reste le processus principal PID 1