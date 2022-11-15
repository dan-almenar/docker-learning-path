# Docker cheatsheet
For a more detailed information, please refer to the [official documentation](https://docs.docker.com/).

## Basic commands
```bash
$ docker --help
```
Displays a list of useful docker commands

```bash
$ docker --version
```
Displays the installed version of Docker, if any.
  
```bash
$ docker images
```
Lists all images on the system.

## Working with Dockerfiles
```bash
$ docker build -t <tag-of-resulting-container> <path-to-the-Dockerfile>
```
(If not specified, the docker build command will look for a file named Dockerfile. The result is a docker image)

Example:
```bash
$ docker build -t my-image .
```

#### Basic Dockerfile statements
**FROM**: Indicates the image to start
```Docker
FROM ubuntu:14.04
```

**RUN**: Runs the command line
```Docker
RUN echo "Hello World!"
```

**ADD**: Adds local files, unzips .tar files, URLs, etc.
```Docker
ADD my-file /files/my-file
ADD my-tar.tar.gz /install
ADD https://some-url.com/download/random.pdf /documents/pdf/
```

**ENV**: sets enviroment variables.
```Docker
ENV DEVELOP_PORT=8080
```

**CMD**: Specifies a command to run
```Docker
CMD "nano" "my-file.txt"
```

**ENTRYPOINT**: Prefixes a command to run

RUN, ENTRYPOINT and CMD accept two different syntaxes:
- Shell
```Docker
RUN apt-get update
```
- Exec
```Docker
CMD ["/bin/nano", "notes.txt"]
```

**EXPOSE**: Maps a port into the container
```Docker
EXPOSE 8080
```

**VOLUME**: Defines shared or ephemeral volumes
```Docker
VOLUME ["/documents/shared" "/documents/shared"]
VOLUME ["documents/shared"]
```

Note: Shared volumes are not recommended
.

**WORKDIR**: Sets the directory for the container to start
```Docker
WORKDIR /app
```

**USER**: Sets the container user
