# Playground - Node.js & GraphQL

* [Node.js](https://nodejs.org/en/) - v16
* [GraphQL](https://graphql.org/)

## Makefile targets

* build-dev
  * Builds Docker images and containers from docker/docker-compose.yaml

* start
  * Runs `docker compose up -d`

* stop
  * Runs `docker compose stop`

* ssh
  * Runs SSH into the Node container

* build
  * Runs `npm run build` inside Node container