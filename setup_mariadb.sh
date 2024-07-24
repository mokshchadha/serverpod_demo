#!/bin/bash

# Variables
MARIADB_CONTAINER_NAME=mariadb-columnstore
MARIADB_ROOT_PASSWORD=my_root_password
MARIADB_DATABASE=my_database
MARIADB_USER=my_user
MARIADB_PASSWORD=my_password

# Pull the latest MariaDB ColumnStore Docker image
docker pull mariadb/columnstore:latest

# Run MariaDB ColumnStore container
docker run -d \
    --name $MARIADB_CONTAINER_NAME \
    -e MARIADB_ROOT_PASSWORD=$MARIADB_ROOT_PASSWORD \
    -e MARIADB_DATABASE=$MARIADB_DATABASE \
    -e MARIADB_USER=$MARIADB_USER \
    -e MARIADB_PASSWORD=$MARIADB_PASSWORD \
    -p 3306:3306 \
    mariadb/columnstore:latest

# Display status
if [ $? -eq 0 ]; then
    echo "MariaDB ColumnStore container has been started successfully."
    echo "Container Name: $MARIADB_CONTAINER_NAME"
    echo "Root Password: $MARIADB_ROOT_PASSWORD"
    echo "Database Name: $MARIADB_DATABASE"
    echo "User: $MARIADB_USER"
    echo "Password: $MARIADB_PASSWORD"
else
    echo "Failed to start MariaDB ColumnStore container."
fi

# Wait for a few seconds to ensure the container is fully started
sleep 10

# Check if the MariaDB ColumnStore is working and ColumnStore engine is available
docker exec -it $MARIADB_CONTAINER_NAME mysql -u root -p$MARIADB_ROOT_PASSWORD -e "SHOW ENGINES;" | grep Columnstore

if [ $? -eq 0 ]; then
    echo "ColumnStore engine is available."
else
    echo "ColumnStore engine is not available."
fi

docker exec -it $MARIADB_CONTAINER_NAME mysql -u root -p$MARIADB_ROOT_PASSWORD -e "SHOW PLUGINS;" | grep Columnstore

if [ $? -eq 0 ]; then
    echo "ColumnStore plugin is installed."
else
    echo "ColumnStore plugin is not installed."
fi
