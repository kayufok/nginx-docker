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