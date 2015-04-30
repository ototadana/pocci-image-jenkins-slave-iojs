FROM xpfriend/jenkins-slave-nodejs:1.0.0
MAINTAINER ototadana@gmail.com

ENV NODEJS_VERSION iojs-v1.8.1

RUN source ~/.nvm/nvm.sh \
    && nvm install ${NODEJS_VERSION} \
    && npm install -g bower@${BOWER_VERSION} grunt-cli@${GRUNT_VERSION} yo@${YO_VERSION}

COPY ./config/. /config/
RUN sudo chown -R jenkins:jenkins /config
RUN chmod +x /config/*

ENV NODE_NAME iojs
