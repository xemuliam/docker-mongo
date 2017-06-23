# Mongo

- ![Version](https://images.microbadger.com/badges/version/xemuliam/mongo:3.4.svg) ![Layers](https://images.microbadger.com/badges/image/xemuliam/mongo:3.4.svg)

[Docker](https://www.docker.com/what-docker) image for [MondoDB](http://www.mongodb.com), based on [Alpine](http://alpinelinux.org)

- ![Docker builds](https://img.shields.io/docker/automated/xemuliam/mongo.svg) ![Docker Pulls](https://img.shields.io/docker/pulls/xemuliam/mongo.svg) ![Docker Stars](https://img.shields.io/docker/stars/xemuliam/mongo.svg)

```
 ______ 
< Mongo >
 ------- 
    \
     \
      \
                    ##        .
              ## ## ##       ==
           ## ## ## ##      ===
       /""""""""""""""""___/ ===
  ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~
       \______ o          __/
        \    \        __/
          \____\______/
```
  

*__Please use corresponding branches from this repo to play with code.__*


# Overview

Dockerized Mongo database.

# Exposed ports

- 27017 - The default port for __mongod__ and __mongos__ instances
- 28017 - The default port for the MongoDB web status page


# Volumes

All below volumes can be mounted to docker host machine folders or shared folders to easy maintain data inside them. 

Mongo-specific:
- /data/db
- /data/configdb


# Official Documentation and Guides

- [Overview](http://docs.mongodb.com/)
- [Getting Started](https://docs.mongodb.com/manual/tutorial/getting-started/)


# Usage

This image can either be used as a base image for building on top of MongoDB or just to experiment with. I personally have not attempted to use this in a production use case.

Please use corresponding branches from this repo to play with code.


# Pre-Requisites
Ensure the following pre-requisites are met (due to some blocker bugs in earlier versions). As of today, the latest Docker Toolbox and Homebrew are fine.

- Docker 1.10+
- Docker Machine 0.6.0+
- Kitematic 0.12

(all downloadable as a single [Docker Toolbox](https://www.docker.com/products/docker-toolbox) package as well)


# How to use from Kitematic

1. Start Kitematic
2. Enter `xemuliam` in serach box
3. Choose `mongo` image
4. Click `Create` button

Kitematic will assign all ports and you'll be able to run MongoDB simple web-interface directly from Kitematic.


# How to use from Docker CLI

1. Start Docker Quickstart Terminal
2. Run command  `docker run -d -p 27017:27017 -p 28017:28017 xemuliam/mongo`
3. Check Docker machine IP  `docker-machine ls`
4. Use IP from previous step in address bar of your favorite browser, e.g. ` http://192.168.99.100:28017`

# Enjoy! :)
