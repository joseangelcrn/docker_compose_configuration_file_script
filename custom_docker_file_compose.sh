#!/bin/bash

#Change to your correct file path..
#--- docker-compose.yml location
#path_docker_compose_yml="/home/$USER/Documentos/docker_test/my_app"
path_docker_compose_yml="."
#--- docker-compose-custom.yml save location
output_path="$path_docker_compose_yml/docker-compose-custom.yml"

#DEFAULT BITNAMI MARIADB VALUES (not change)

default_mariadb_user="bn_myapp"
default_mariadb_database="bitnami_myapp"

#DEFAULT BITNAMI LARAVEL VALUES (not change)

default_laravel_port_local=8000
default_laravel_port_docker=8000
default_laravel_mariadb_user=$default_mariadb_user
default_laravel_mariadb_db=$default_mariadb_database
default_laravel_volume=".my-project"
#-------------------------------------------------------

#CUSTOM BITNAMI MARIADB VALUES

custom_mariadb_user="jose"
custom_mariadb_database="laravel_db"

#CUSTOM BITNAMI LARAVEL VALUES 

custom_laravel_port_local=8000
custom_laravel_mariadb_user=$custom_mariadb_user
custom_laravel_mariadb_db=$custom_mariadb_database
custom_laravel_volume=".my-project-custom"


#Executing command...

echo "customizing.."
sed -e "s/$default_mariadb_user/$custom_mariadb_user/" \
	-e "s/$default_mariadb_database/$custom_mariadb_database/" \
 	-e "s/\.$default_laravel_volume/$custom_laravel_volume/"  \
 	-e "s/$default_laravel_port_local:/$custom_laravel_port_local:/"  \
 	"$path_docker_compose_yml/docker-compose.yml" \
 	> $output_path

echo "Docker compose file has been update in: '$output_path'"
