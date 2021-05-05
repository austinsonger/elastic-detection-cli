![](https://github.com/austinsonger/elastic-detection-cli/raw/main/Elastic%20Detection%20CLI%20-%20L.png)

## Docker

### Pull Image from Docker Hub

```
docker pull asonger/elastic-detection-cli:latest
```


### Build Image from Dockerfile

```
docker build -t elastic-detection-cli .
```


### Create and Run Container


```
docker container run -it --name elastic-detection-cli elastic-detection-cli
```


## Detection Rules CLI

```
python3 -m detection_rules --help
```


