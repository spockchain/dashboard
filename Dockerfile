FROM node:8.16.0-jessie

WORKDIR /

ADD . /

EXPOSE 8000

RUN npm install && npm install -g grunt-cli && grunt

ENTRYPOINT ["node","app.js"]