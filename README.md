# DAMPP
Dockerized Apache-MariaDB-PHP-PHPMyAdmin

This repo can be used to run a simple docker container for web development, using the Apache server contained in the PHP Docker image and the PHPMyAdmin image.

# Usage
I recently created a script that set up the Apache WebServer folder and the database root password by the user input, to run it just start 
```
./setup_start.sh
```

You will be asked to insert the absolute path(only absolute paths works!) of the folder you want to use as Apache default and the root password for the database, then it's going to start the container

If you want to configure yourself, just change the folder in the [docker compose file](docker-compose.yml)
file and then run 
```
docker compose up -d
```

You will be able to access it via browser

# Details
### Database
You can change the DB root password by running the script or in the [docker compose file](docker-compose.yml)
### Ports
Ports used by the container:

* Web Server
    * port: 80
* PHPMyAdmin 
    * port: 8080
* MariaDB
    * port: 3306

### Folders
This container use a volume for Apache Web Server folder, you can specify the directory that is mounted inside the volume by starting the bash file.
For configuration files, it mounts the [configuration folder](.conf), so if you want to edit those files you can do it by going inside that folder.

# Known issues
* At the moment, when you restart the container, PHPMyAdmin web page stops working. I think it's because of the mounted home folder, I'm gonna work on it as soon as possible
* At the moment when you log in the PhpMyAdmin page it will show you an error about "PhpMyAdmin" advanced storage not configured. Unfortunately is an issue with the official PhpMyAdmin image, and it can't be setted up automatically unless the use of some kind of workaround. When it's going to be solved I'll update the code. For now, just log in and press "See more", then press on the create database text, it'll do everything automatically.

Roberto Fabietti, 2022