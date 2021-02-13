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

## Reference

- [Kaggle公式DockerイメージをGCPにデプロイしてGPU計算環境を準備する](https://qiita.com/shin27/items/50bf1df1b2bae3dba032)
- [待ってました CUDA on WSL 2](https://qiita.com/ksasaki/items/ee864abd74f95fea1efa)