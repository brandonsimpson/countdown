FROM node:7.1-alpine

#RUN apt-get update && apt-get install -y nodejs

RUN useradd jenkins --shell /bin/bash --create-home
USER jenkins