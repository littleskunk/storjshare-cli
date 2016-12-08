FROM node:6
MAINTAINER Ian Patton <ian.patton@gmail.com>

RUN useradd -m -s /bin/bash node
RUN mkdir -p /usr/src/app
RUN chown -R node /usr/src/app

USER node
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app/

CMD bin/storjshare.js start
