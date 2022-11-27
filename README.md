# Why this project ?

I made this project to practice multi-stage docker image creation (with Python language).

---

# How to test it ?

If you want to test it :

1 - Install [docker](https://docs.docker.com/get-docker/).

2 - Clone the code.
```
git clone "https://github.com/YaShuHee/docker_multi_stage_building_python"
```

3 - Move into the created directory.
```
cd docker_multi_stage_building_python
```

4 - Build the docker image.
```
docker image build -t multistage_python:1.0 .
```

5 - Run a shell in a container made with the built image.
```
docker container run -ti multistage_python:1.0 sh
```

6 - List the files in the /app directory of the container
```
ls
```

7 - You can see there is only one file : "qrcode.png".