# docker_compose_configuration_file_script <br> (laravel bitnami)
Simple script to quick setup configuration such as ports, database name, volume folder, etc..


# Steps..

1- Create a directory where name directory will be the app name, then cd inside:
```
mkdir my_laravel_app && cd my_laravel_app 
```

2- Download Oficial Bitnami docker_compose.yml :

```
curl -LO https://raw.githubusercontent.com/bitnami/bitnami-docker-laravel/master/docker-compose.yml
```
3- Clone repository and open file ```custom_docker_file_compose.sh```  , then change whatever ```custom_``` variables to change default  bitnami laravel ```docker_compose.yml```  file. <br>
4- Adapt other important variables such as:
  - ```$path_docker_compose_yml``` => Place where is original bitnami compose file
  - ```$output_path``` => Place where you want to save customize file after run script
  
5- Execute script to change variables : 
```
./custom_docker_compose.sh
```

6- Replace **official** ```docker-compose``` file to **custom** ```docker-compose``` file:

```
mv docker-compose.yml docker-compose.yml.old && mv docker-compose-custom.yml docker-compose.yml
```
7- Create container :
```
docker-compose up
```
