FROM phusion/baseimage
MAINTAINER Dmitri Pisarev <dimaip@gmail.com>

RUN mkdir /app
WORKDIR /app

ADD . /app

ENV DOCKER_HOST unix:///var/run/docker.sock

# We can't write straight into .ssh/config as we'll have permission issues
CMD ./docker-gen -watch -notify "sh copy-config.sh" ssh-config.tmpl config_temp
