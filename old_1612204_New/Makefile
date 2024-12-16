
DCOMPOSE	=	./srcs/docker-compose.yml



all:
	mkdir -p /home/$${USER}/data/
	mkdir -p /home/$${USER}/data/wordpress
	mkdir -p /home/$${USER}/data/database
	docker-compose -f $(DCOMPOSE) build
	docker-compose -f $(DCOMPOSE) up -d
	
fclean:	stop rm_containers rm_volumes rm_network rm_images rm_data

stop:
	- docker stop $$(docker ps -qa)

rm_containers:
	- docker rm $$(docker ps -qa)

rm_volumes:
	- docker volume rm $$(docker volume ls -q)

rm_network:
	- docker network rm $$(docker network ls -q)

rm_images:
	- docker rmi -f $$(docker images -qa)

rm_data:
	sudo rm -rf /home/$${USER}/data

up:
	docker-compose ./srcs/docker-compose.yml up -d
down:
	docker-compose down
ps:
	docker-compose ./srcs/docker-compose.yml ps