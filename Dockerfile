FROM       alpine
MAINTAINER Viacheslav Kalashnikov <xemuliam@gmail.com>
RUN        apk update && apk add --upgrade bash jq && \
           echo "@edge http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
           apk --no-cache --update add mongodb@edge=$MONGODB_VERSION && \
           # rm /usr/bin/mongosniff /usr/bin/mongoperf && \
           rm -rf /var/cache/apk/*
COPY       start_mongo.sh /
RUN        chmod +x /start_mongo.sh
ENTRYPOINT /start_mongo.sh
EXPOSE     27017 28017
VOLUME     /data/db
WORKDIR    /data
CMD        mongod
