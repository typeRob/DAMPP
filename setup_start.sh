#!/bin/bash
echo "insert absolute path of the home folder(~ doesn't work):"
read dev_path
echo "path inserted: " $dev_path
echo "insert database root password:"
read db_pw
echo "password inserted"
docker volume create --driver local --opt type=none --opt device=$dev_path --opt o=bind dev
sed -i '.bak' "s+DB_ROOT_PASSWORD=.*+DB_ROOT_PASSWORD="$db_pw"+g" .env
docker compose up -d