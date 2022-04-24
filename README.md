# docker_compose_configuration_file_script <br> (laravel bitnami)
Simple script to quick setup configuration such as ports, database name, volume folder, etc..


# Steps..

1- Open file and change whatever ```custom_``` variables to change default  bitnami laravel ```docker_compose.yml```  file. <br>
2- Adapt other important variables such as:
  - ```$path_docker_compose_yml``` => Place where is original bitnami compose file
  - ```$output_path``` => Place where you want save customize file after run script
  
3- Execute : 
```
./custom_docker_compose.sh
```
