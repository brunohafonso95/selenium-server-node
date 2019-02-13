FROM tarampampam/node:alpine

RUN mkdir /app
WORKDIR /app

ADD package.json /app
RUN npm run install-server

ADD . /app

EXPOSE 4444
ENTRYPOINT npm run start-server
