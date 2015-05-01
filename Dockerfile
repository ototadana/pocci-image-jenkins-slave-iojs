FROM xpfriend/jenkins-slave-nodejs:1.0.1
MAINTAINER ototadana@gmail.com

ENV NODEJS_VERSION iojs-v1.8.1

RUN source ~/.nvm/nvm.sh \
    && nvm install ${NODEJS_VERSION} \
    && nvm alias default ${NODEJS_VERSION} \
    && npm install -g bower@${BOWER_VERSION} grunt-cli@${GRUNT_VERSION} yo@${YO_VERSION}

ENV NODE_NAME iojs
