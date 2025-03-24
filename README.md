# Inception project : learn about Docker
Inception is a project in which we create several docker containers from scratch. We will virtualize several Docker images , creating them in our personal virtual machine (Debian).

You will learned how to write a dockerfile, docker-compose, and use docker commands.

## Services
- create 3 containers
  - a Docker container contains wordpress + php-fpm.
  - a Docker container contains NGINX with TLSv1.2 or TLSv1.3.
  - a Docker container contains MariaDB.
- create 2 volumes
  - Wordpress database.
  - Wordpress website files.
- create 1 Docker network

![apercu](/inception-diagram.png)

## Build and start
A Makefile is used to build the project.

run a make :
```bash
make
```

It takes several time for the 1st building. After running you will have this kind of screen:

![apercu](/running-containers.png)

In Chrome browser, you can launch the website using:

``` bash
https://localhost
```



