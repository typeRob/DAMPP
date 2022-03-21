echo "insert absolute path of the home folder:"
read dev_path
echo "path inserted: " $dev_path
echo "insert database root password:"
read db_pw
echo "password inserted: " $db_pw
sed -i '.bak' "s+DEV_PATH=.*+DEV_PATH="$dev_path"+g" .env
sed -i '.bak' "s+DB_ROOT_PASSWORD=.*+DB_ROOT_PASSWORD="$db_pw"+g" .env
docker compose up -d