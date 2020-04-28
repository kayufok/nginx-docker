# nginx-docker
reverse proxy / request redirect


## Create docker network
```bat
sudo docker network create -d bridge nginx-net
```

## Build nginx docker image with image name "nginx-docker"
```bat
sudo docker build --no-cache -t nginx-docker .
```

## Create docker container using image "nginx-docker"
```bat
sudo docker run --name nginx-container -p 80:80 --network nginx-net -d nginx-docker 
```

## Stop and Remove existing docker container
```bat
sudo docker container stop nginx-container
sudo docker container rm nginx-container
```

### Execute command inside container
```bat
sudo docker exec -it nginx-container echo "I'm inside the container!"
sudo docker exec -it nginx-container cat /var/log/nginx/access_log
```

### Kill and Deploy command in sequency
```bat
sudo docker container stop nginx-container
sudo docker container rm nginx-container
sudo docker build --no-cache -t nginx-docker .
sudo docker run --name nginx-container -p 80:80 --network nginx-net -d nginx-docker 
```