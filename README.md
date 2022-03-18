#DAMPP
Dockerized Apache-Mysql-PHP-PHPMyAdmin

This repo can be used to run a simple docker container for web development, using the Apache server contained in the PHP Docker image and the PHPMyAdmin image.

#Usage
To start it, simply move into the folder and run
```
docker compose up -d
```

You will be able to access it via browser

#Ports

*Web Server
    *port 80
*PHPMyAdmin 
    *port 8080
*MySQL
    *port 3306

#Future Updates
I'm gonna work on it to implement a custom Apache configuration file, in order to be able to set custom configs without entering the container CLI

Roberto Fabietti, 2022
