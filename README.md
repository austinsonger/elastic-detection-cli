[![Docker Pulls](https://img.shields.io/docker/pulls/asonger/elastic-detection-cli.svg)](https://hub.docker.com/r/asonger/elastic-detection-cli/)
[![Docker Stars](https://img.shields.io/docker/stars/asonger/elastic-detection-cli.svg)](https://hub.docker.com/r/asonger/elastic-detection-cli/)

![](https://github.com/austinsonger/elastic-detection-cli/raw/main/Elastic%20Detection%20CLI%20-%20L.png)

## Docker

### Pull Image from Docker Hub

```
docker pull asonger/elastic-detection-cli
```


### Build Image from Dockerfile

```
docker build -t elastic-detection-cli .
```


### Create and Run Container


```
docker container run -it --name elastic-detection-cli elastic-detection-cli
```


### Kill and Delete Containers and Images

```
docker rm -f $(docker ps -aq)        # Delete all Containers
docker rmi -f $(docker images -q)    # Delete all Images
```


## Elastic Detection Rules CLI

```
python3 -m detection_rules --help
```

## 








