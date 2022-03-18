FROM node:16-alpine as base

WORKDIR /opt/app

COPY package*.json .

RUN npm install

COPY . .