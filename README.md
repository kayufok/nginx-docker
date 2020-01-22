# nginx-docker
reverse proxy / request redirect


## Create docker network
```bat
sudo docker network create -d bridge nginx-net
```

## Build nginx docker image with image name "nginx-docker"
```bat
docker build -t nginx-docker .
```

## Create docker container using image "nginx-docker"
```bat
docker run --name nginx-container -p 80:80 -d nginx-docker --network nginx-net
```