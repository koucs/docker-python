## About

To setup [Kaggle/docker-python](https://github.com/Kaggle/docker-python) in the local environment. 

## Setup

1. Build [Kaggle/docker-python](https://github.com/Kaggle/docker-python) docker image 

```shell
$ ./build --gpu
```

2. Build a original images

```shell
$ docker build -t koucs/docker-python .
```

3. Run a containar

```shell
$ docker run --gpus all -p 8080:8080 -v `pwd`:/kaggle -d --name kaggle --restart=always  koucs/docker-python
```

windows (powershell)

```shell
$ docker run --gpus all -p 8080:8080 -v C:\Users/path/to/kaggle:/kaggle -d --name kaggle --restart=always koucs/docker-python
```

## Memo

```
docker: Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Post http://%2Fvar%2Frun%2Fdocker.sock/v1.26/containers/create: dial unix /var/run/docker.sock: connect: permission denied.
See 'docker run --help'.
```

from [here](https://qiita.com/ksasaki/items/ee864abd74f95fea1efa#wsl-2-%E4%B8%8A%E3%81%AE-linux-%E3%81%B8%E3%81%AE-nvidia-container-toolkit-%E3%81%AE%E3%82%A4%E3%83%B3%E3%83%88%E3%83%BC%E3%83%AB), it is recommended to fix the issue by adding the current user to the docker group.

```sh
$ sudo usermod -a -G docker $USER
```

## Reference

- [Kaggle公式DockerイメージをGCPにデプロイしてGPU計算環境を準備する](https://qiita.com/shin27/items/50bf1df1b2bae3dba032)
- [待ってました CUDA on WSL 2](https://qiita.com/ksasaki/items/ee864abd74f95fea1efa)