# Inception project : learn about Docker
Inception is a project in which we create several docker containers from scratch. We will virtualize several Docker images , creating them in our personal virtual machine (Debian).

## Services
- create 3 containers
  - a Docker container contains wordpress + php-fpm.
  - a Docker container contains NGINX with TLSv1.2 or TLSv1.3.
  - a Docker container contains MariaDB.
- 2 volumes
  - Wordpress database.
  - Wordpress website files.
- 1 Docker network

![apercu](/inception-diagram.png)

## Build and start
a Makefile is used to build the project.

run a make :
```bash
make
```
it takes several time for the 1st building. after running you will find 

![apercu](/running-containers.png)

in Chrome browser, you can launch the website using

``` bash
https://localhost
```



