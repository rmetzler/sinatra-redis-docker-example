# Sinatra Redis Example for Docker-Compose

This is a dockerized example JSON API built with Sinatra and Redis. I hope someone will learn from it.

The example is really minimal and uses the Docker Library containers for [Ruby](https://registry.hub.docker.com/u/library/ruby/) and [Redis](https://registry.hub.docker.com/u/library/redis/).

The most interesting parts are the changes you have to make to enable correct routing between Docker containers. Docker creates environment variables for [linked containers](https://docs.docker.com/userguide/dockerlinks/#environment-variables) which help a lot.

## What you need

- docker (boot2docker if you are on Mac OSX)
- docker-compose

## start up

```
$ docker-compose build
$ docker-compose up
```
I didn't change the default Sinatra port, so after start you have to do
```
$ curl http://<docker_host>:4567/
```

You should see a JSON response with a counter counting up for each request.
