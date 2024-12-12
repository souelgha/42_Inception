FROM debian:11

RUN apt update && apt upgrade && apt install -y \
	nginx 
# RUN apt install curl -y 
# RUN apt install sudo -y 
# 		openssl			\
# 		vim				\


# RUN			rm -f /etc/nginx/nginx.conf

# COPY		./config/nginx.conf /etc/nginx/nginx.conf
# COPY		scripts/setup_nginx.sh /setup_nginx.sh

# RUN			chmod -R +x /setup_nginx.sh

# EXPOSE		443

# ENTRYPOINT	["sh", "setup_nginx.sh"]
CMD ["nginx", "-g", "daemon off;"]  
#assure que nginx reste le processus principal PID 1