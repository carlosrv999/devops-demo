FROM node:8.12.0-alpine

RUN npm install pm2 -g

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["pm2-docker", "."]
