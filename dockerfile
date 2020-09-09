FROM node:lts-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY ./dist .

EXPOSE 8080

RUN npm run build