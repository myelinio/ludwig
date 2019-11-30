# Ludwig
```bash
export _LUDWIG_VERSION=0.2.1.29
docker build -t myelinio/ludwig:0.2.1 ci/docker -f ci/docker/Dockerfile --build-arg ludwig_version=$_LUDWIG_VERSION
docker push myelinio/ludwig:0.2.1

docker build -t myelinio/ludwig-gpu:0.2.1 . -f Dockerfile-gpu

docker build -t myelinio/ludwig-deploy:0.2.1 . -f Dockerfile-deploy
docker push myelinio/ludwig-deploy:0.2.1

docker build -t myelinio/ludwig-horovod-gpu:0.2.1 . -f Dockerfile-horovod-gpu

```

