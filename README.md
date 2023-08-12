# simple-dockerfile-example

A simple example for a Dockerfile and how to use it.

# Docker commands

Pull base image:

```
docker pull nginx:stable
#docker pull nginx:1.24.0
#docker pull nginx:1.24.0-alpine
```

Build and run:

```
docker build . -t simple-image
docker run -p 8080:80 --rm --name simple-container -d simple-image
```

Stop a container:

```
docker stop simple-container
```

List containser and images:

```
docker container ls
docker container ls -a

docker image ls
```

Tag an image:

```
docker tag simple-image simple-image:1.2
```

Run with Volumes:

```
docker run -p 8080:80 --rm --name simple-nginx -d simple-image
# access via http://localhost:8080

docker run -p 8081:80 --rm -v ./welcome.html:/usr/share/nginx/html/index.html:z --name simple-welcome -d simple-image
# access via http://localhost:8081/index.html

docker run -p 8082:80 --rm -v ./index.html:/usr/share/nginx/html/index.html:z --name simple-fun -d simple-image
# access via http://localhost:8082/index.html
```

Enter container:

```
docker exec -it simple-welcome bash
```

Show processes of a container:

```
docker top simple-nginx 
```


# Podman commands

Pull base image:

```
podman pull nginx:stable
#podman pull nginx:1.24.0
#podman pull nginx:1.24.0-alpine
```

Build and run:

```
podman build . -t simple-image
podman run -p 8080:80 --rm --name simple-container -d simple-image
```

Stop a container:

```
podman stop simple-container
```

List containser and images:

```
podman container ls
podman container ls -a

podman image ls
```

Tag an image:

```
podman tag simple-image simple-image:1.2
```

Run with Volumes:

```
podman run -p 8080:80 --rm --name simple-nginx -d simple-image
# access via http://localhost:8080

podman run -p 8081:80 --rm -v ./welcome.html:/usr/share/nginx/html/index.html:z --name simple-welcome -d simple-image
# access via http://localhost:8081/index.html

podman run -p 8082:80 --rm -v ./index.html:/usr/share/nginx/html/index.html:z --name simple-fun -d simple-image
# access via http://localhost:8082/index.html
```

Enter container:

```
podman exec -it simple-welcome bash
```

Show processes of a container:

```
podman top simple-nginx 
```
