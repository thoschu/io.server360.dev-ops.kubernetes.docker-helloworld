# io.server360.dev-ops.kubernetes.docker-helloworld
A simple nginx helloworld app for docker to show kubernetes. Runs on port :7788


To pull this image:
```
docker pull thoschu/helloworld:latest
```

To run this image:
```
docker run -p 7788:80/tcp "thoschu/helloworld:latest"
```

Dockerhub link: https://hub.docker.com/r/thoschu/helloworld/

Github link: https://github.com/thoschu/io.server360.dev-ops.kubernetes.docker-helloworld