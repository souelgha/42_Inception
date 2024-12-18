
DC = ./srcs/docker-compose.yml

all: destroy creat_v build up

network:
	@docker compose -f $(DC) up -d 

creat_v:
	@sudo mkdir -p $(HOME)/data/mariadb
	@sudo mkdir -p $(HOME)/data/wordpress
	@sudo chown -R $(USER):$(USER) $(HOME)/data
	@sudo chmod -R 755 $(HOME)/data

build:
	@docker compose -f $(DC) build 

up: network
	@docker compose -f $(DC) up -d 

start:
	@docker compose -f $(DC) start 

down:
	@docker compose -f $(DC) down 

destroy:
	@docker compose -f $(DC) down -v 
	@sudo rm -fr $(HOME)/data/mariadb
	@sudo rm -fr $(HOME)/data/wordpress

rm_images:
	@sudo docker rmi -f $$(docker images -qa)


stop:
	@docker compose -f $(DC) stop 

restart:
	@docker compose -f $(DC) stop 
	@docker compose -f $(DC) up -d 


ps:
	@docker compose -f $(DC) ps


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

.PHONY: help build up start down destroy stop restart ps

# docker stop $(docker ps -qa); docker rm $(docker ps -qa); docker rmi -f $(docker images -qa); docker volume rm $(docker volume ls -q); docker network rm $(docker network ls -q)