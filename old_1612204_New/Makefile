
# DCOMPOSE	=	./srcs/docker-compose.yml

# all: fclean create_v build up


# create_v:
# 	mkdir -p /home/sonia42/data/wordpress_files
# 	mkdir -p /home/sonia42/data/db_data
	
# fclean:	stop rm_containers rm_volumes rm_network rm_images rm_data

# stop:
# 	- docker stop $$(docker ps -qa)

# rm_containers:
# 	- docker rm $$(docker ps -qa)

# rm_volumes:
# 	- docker volume rm $$(docker volume ls -q)

# rm_network:
# 	- docker network rm $$(docker network ls -q)

# rm_images:
# 	- docker rmi -f $$(docker images -qa)

# rm_data:
# 	sudo rm -rf /home/sonia42/data

# up:
# 	docker-compose ./srcs/docker-compose.yml up -d
# down:
# 	docker-compose down
# ps:
# 	docker-compose ./srcs/docker-compose.yml ps



# build:
# 	docker-compose -f $(DCOMPOSE) build

DC = ./srcs/docker-compose.yml


all: destroy creat_v build up

network:
	@docker compose -f $(DC) up -d $(c)

creat_v:
	@sudo mkdir -p $(HOME)/data/mariadb
	@sudo mkdir -p $(HOME)/data/wordpress
	@sudo chown -R $(USER):$(USER) $(HOME)/data
	@sudo chmod -R 755 $(HOME)/data

build:
	@docker compose -f $(DC) build $(c)

up: network
	@docker compose -f $(DC) up -d $(c)

start:
	@docker compose -f $(DC) start $(c)

down:
	@docker compose -f $(DC) down $(c)

destroy:
	@docker compose -f $(DC) down -v $(c)
	@sudo rm -fr $(HOME)/data/mariadb
	@sudo rm -fr $(HOME)/data/wordpress

stop:
	@docker compose -f $(DC) stop $(c)

restart:
	@docker compose -f $(DC) stop $(c)
	@docker compose -f $(DC) up -d $(c)

logs:
	@docker compose -f $(DC) logs --tail=100 -f $(c)

ps:
	@docker compose -f $(DC) ps

login:
	@docker compose -f $(DC) exec $(c) /bin/bash

help:
	@echo    "build  : Services are built once and then tagged, by default as project-service."
	@echo    "up     : Builds, (re)creates, starts, and attaches to containers for a service."
	@echo    "start  : Starts existing containers for a service."
	@echo    "down   : Stops containers and removes containers, networks, volumes, and images created by up."
	@echo    "destroy: Remove named volumes declared in the "volumes" section of the Compose file and anonymous volumes attached to containers."
	@echo    "stop   : Stops running containers without removing them. They can be started again with docker compose start."
	@echo    "restart: Restarts existing containers for a service."
	@echo    "logs   : Displays log output from services."
	@echo    "ps     : Lists containers for a Compose project, with current status and exposed ports."
	@echo    "login  : This is the equivalent of docker exec targeting a Compose service."

.PHONY: help build up start down destroy stop restart logs logs-api ps login-timescale login-api db-shell