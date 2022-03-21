#!/bin/bash
echo "insert absolute path of the home folder:"
read dev_path
echo "path inserted: " $path
if [[ $dev_path ]] ; then
    sed -i '.bak' "s+=.*+="$dev_path"+g" .env
    docker compose up -d
else
    echo "error, try again"
fi