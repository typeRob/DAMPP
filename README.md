# DAMPP
Dockerized Apache-MariaDB-PHP-PHPMyAdmin

This repo can be used to run a simple docker container for web development, using the Apache server contained in the PHP Docker image and the PHPMyAdmin image.

# Usage
I recently created a script that set up the Apache WebServer folder by the user input, to run it just start 
```
./setup_start.sh
```

If you are on a MacOS system, run the file specific for MacOS

You will be asked to insert the absolute path of the folder you want to use as Apache default, then it's going to start the container

If you want to configure yourself, just change the folder in the
```
docker-compose.yml
```
file and then run 
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
* MariaDB
    * port: 3306

### Folders
This container is setted up to use the 
```
~/dev/htdocs/
```
Using the setup_start file you can insert the path you want to use, and then it's going to change it automatically.

If you want, you can change it directly in the docker-compose.yml

# Future Updates
I'm gonna work on it to implement a custom Apache configuration file, in order to be able to set custom configs without entering the container CLI

Roberto Fabietti, 2022