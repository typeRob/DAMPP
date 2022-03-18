# DAMPP
Dockerized Apache-Mysql-PHP-PHPMyAdmin

This repo can be used to run a simple docker container for web development, using the Apache server contained in the PHP Docker image and the PHPMyAdmin image.

# Usage
To start it, simply move into the folder and run
```
docker compose up -d
```

You will be able to access it via browser

# Details
### Database
The default password for the database is setted to "root", I suggest you to change it for security issues
### Ports
Ports used by the container:

* Web Server
    * port: 80
* PHPMyAdmin 
    * port: 8080
* MySQL
    * port: 3306

### Folders
This container is setted up to use the 
```
~/dev/htdocs/
```
folder as a volume, so you need to create a folder named "htdocs" in that position, or you can change it in the docker-compose.yml

# Future Updates
I'm gonna work on it to implement a custom Apache configuration file, in order to be able to set custom configs without entering the container CLI

Roberto Fabietti, 2022