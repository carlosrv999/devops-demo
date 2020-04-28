FROM node:10.20.1-alpine3.11

RUN npm install pm2 -g

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["pm2-docker", "."]
