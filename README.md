# demo-spring-multistage-docker

The purpose of this project is explore how to build a multi-stage docker image.

## Running the sample project

In the project's root directory: 

### Build the `azure-base:latest` image locally
```shell
docker build --tag azure-base:latest -f DockerfileAzure ./
```
### Build the `demo-app:latest` image locally
```shell
docker build --tag demo-app:latest -f Dockerfile ./
```

### Running the `demo-app:latest` image locally
```shell
docker run -d -p 8080:8080 demo-app:latest
```

### Test the `demo-app:latest` container
```shell
$ curl -s -XGET localhost:8080/hello | jq
{
  "message": "hello world!"
}
```


